/*Write a trigger on the Account when the Account is updated check all opportunities related to the account.
  Update all Opportunities Stage to close lost
   if an opportunity created date is greater than 30 days from today and stage not equal to close won.


To create a trigger in Salesforce that updates all related opportunities' stages to "Close Lost" when an account is updated
and the opportunity's created date is greater than 30 days from today and the stage is not already "Close Won," 
*/



trigger UpdateOpportunityStage1 on Account (before update) {

    List<Opportunity> opportunitiesToUpdate = new List<Opportunity>();
    
    // Iterate through the updated accounts
    for (Account updatedAccount : Trigger.new) {
        // Query for related opportunities meeting the criteria
        List<Opportunity> relatedOpportunities = [SELECT Id, CreatedDate, StageName
                                                  FROM Opportunity
                                                  WHERE AccountId = :updatedAccount.Id
                                                  AND CreatedDate <= :System.today() - 30
                                                  AND StageName != 'Closed Won'];
        
        // Add the opportunities to the list for update
        opportunitiesToUpdate.addAll(relatedOpportunities);
    }
    
    // Update the opportunities to 'Close Lost'
    for (Opportunity opp : opportunitiesToUpdate) {
        opp.StageName = 'Closed Lost';
    }
    
    // Perform the update
    if (!opportunitiesToUpdate.isEmpty()) {
        update opportunitiesToUpdate;
    }
}  
  

/*
This trigger will fire after an Account is updated. 
It queries for related opportunities that meet the specified criteria 
(created more than 30 days ago and not already in "Closed Won" stage), 
updates their stages to "Close Lost," and then performs the update.
*/