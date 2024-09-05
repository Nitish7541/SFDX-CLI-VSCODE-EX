trigger Triggeroldex2 on Account (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
        for(account accOld:trigger.old)
        {
           for (account accNew:trigger.new)
            
            {
                if(accOld.id==accNew.id && accold.phone!= accnew.phone)
                {
                    accnew.phone.adderror('phone cannot be changed1');
                }
            }
        }
    }

}