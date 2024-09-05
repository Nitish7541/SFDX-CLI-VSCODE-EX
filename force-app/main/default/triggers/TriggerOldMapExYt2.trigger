trigger TriggerOldMapExYt2 on opportunity (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {

        map<id,opportunity> oMap = new map<id,opportunity>();
        oMap = trigger.oldmap;

        for(opportunity newOpp : trigger.new)
        {
            opportunity oldOpp=new opportunity();
            oldopp=omap.get(newopp.id);
            if(newopp.amount != oldopp.amount)
            {
                newopp.amount.adderror('amount cant be changeddd');
            }
        }


    }












}