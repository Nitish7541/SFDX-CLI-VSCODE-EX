trigger TriggerNewExn1 on account (before insert) {

    if(trigger.isbefore && trigger.isinsert)
    {
        for(account a: trigger.new)
        {
            a.numberofemployees=1777;
        }
    }

}