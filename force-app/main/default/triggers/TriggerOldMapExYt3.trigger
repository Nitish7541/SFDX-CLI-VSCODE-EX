trigger TriggerOldMapExYt3 on opportunity (before update) {


    if(trigger.isbefore && trigger.isupdate)
    {
        map<id,opportunity> oMap = new map<id,opportunity>();
        omap=trigger.oldmap;

        for(opportunity oppNew : trigger.new)
        {
            opportunity oldopp = new opportunity();
            oldopp = omap.get(oppnew.id);
            if(oldopp.amount != oppnew.amount)
            {
                oppnew.amount.adderror('amount not change');
            }

        }
    }

}