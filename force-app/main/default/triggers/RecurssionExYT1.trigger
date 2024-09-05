trigger RecurssionExYT1 on Contact (after insert) {

    
    
    if(trigger.isafter && trigger.isinsert && !RecurssionContactExYT1.isTriggerRan)
    {
        RecurssionContactExYT1.isTriggerRan=true;
       RecurssionContactExYT1.duplicateContact(Trigger.new); 
        
    }

        
    
}