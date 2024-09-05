trigger TriggerOldMapExn1 on opportunity (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
        map<id,opportunity> omap= new map<id,opportunity>();
        omap=trigger.oldmap;

        for(opportunity oppnew : trigger.new);
        {
            opportunity oppold= new opportunity();
            oppold= omap.get(oppnew.id);
            if(oppnew.id == oppold.id && oppnew.amount != oppold.amount)
            {
                oppnew.amount.adderror('amount cannot be changed');
            }
        }
    }

}