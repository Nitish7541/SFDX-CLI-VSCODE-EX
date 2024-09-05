trigger TriggerOldMapNewEx1 on account (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
        map<id,account> amap= new map<id,account>();
        amap=trigger.oldmap;

        for(account newacc:trigger.new)
        {
            account accold= new account();
             accold = amap.get(newacc.id);
            
                if(accold.phone != null && accold.phone != newacc.phone)
                {
                    newacc.phone.adderror('phone cannot be change new');
                }
            
        }
    }

}