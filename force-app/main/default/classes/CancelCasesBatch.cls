//Write a Batch class to change the Case status to Cancelled if case created more than 100 days,
// and case status is new and does not have any related records like Tasks or Attachment or Case comments.

global class CancelCasesBatch implements Database.Batchable<SObject> {

    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator([
            SELECT Id
            FROM Case
            WHERE CreatedDate < :Date.today().addDays(-100)
            AND Status = 'New'
        ]);
    }

    global void execute(Database.BatchableContext BC, List<Case> scope) {
        List<Case> casesToUpdate = new List<Case>();

        for (Case c : scope) {
            if (!([SELECT count() FROM Task WHERE WhatId = :c.Id] > 0 
               || [SELECT count() FROM Attachment WHERE ParentId = :c.Id] > 0 
               || [SELECT count() FROM CaseComment WHERE ParentId = :c.Id] > 0)) {
                c.Status = 'Cancelled';
                casesToUpdate.add(c);
            }
        }
        update casesToUpdate;
    }
    
    global void finish(Database.BatchableContext BC) {
        // Optional: Add any post-processing logic here
    }
}

// CancelCasesBatch batchJob = new CancelCasesBatch();
//Database.executeBatch(batchJob);
//CancelCasesBatch Batch =new CancelCasesBatch();
//id batchId = database.executeBatch(Batch,200);