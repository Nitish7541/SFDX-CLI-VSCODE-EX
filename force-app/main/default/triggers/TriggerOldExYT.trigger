trigger TriggerOldExYT on Opportunity (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
        for(opportunity oppold:trigger.old)
        {
            for(opportunity oppnew: trigger.new)
            {
                if(oppOld.id == oppnew.id && oppOld.amount!= oppNew.amount)
                {
                    oppnew.addError('amount cannot be changed please check');
                }
            }
        }
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   /* for(Opportunity oppOld: trigger.old)
    {
    for(Opportunity oppNew: trigger.new)
    {
        if(oppOld.id == oppNew.id && oppOld.amount!= oppNew.amount)
            oppNew.amount.addError('amount cant be changed');
    }
    
    
    }*/
    
}