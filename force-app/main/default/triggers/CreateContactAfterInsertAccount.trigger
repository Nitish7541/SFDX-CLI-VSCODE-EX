trigger CreateContactAfterInsertAccount on Account (after insert) {
    
    if(trigger.isafter && trigger.isinsert)
    {
        system.enqueuejob(new AccountContactsCreation2(Trigger.new));
    }

}