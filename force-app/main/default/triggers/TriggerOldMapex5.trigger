trigger TriggerOldMapex5 on opportunity (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
        map<id,opportunity> omap=new map<id,opportunity>();
        omap=trigger.oldmap;

        for(opportunity newopp:trigger.new)
        {
            opportunity oldopp=new opportunity();
            oldopp=omap.get(newopp.id);
            if(oldopp.id == newopp.id && oldopp.amount != newopp.amount)
            {
                newopp.amount.adderror('amount dont change');
            }
        }

    }

}