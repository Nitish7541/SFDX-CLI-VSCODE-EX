trigger TriggerNewExYT on Account (before insert) {

    
    if(trigger.isbefore && trigger.isinsert)
    {
    
            /*Account acc= Trigger.new[0];
        acc.NumberOfEmployees = 1250;*/
        for(Account acc:Trigger.new)
        {
            acc.NumberOfEmployees=1270;
        }
    
    }
    
}