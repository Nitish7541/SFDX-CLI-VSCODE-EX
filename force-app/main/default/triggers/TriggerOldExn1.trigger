trigger TriggerOldExn1 on account (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
        for(account accold: trigger.old)
        {
            for(account accnew : trigger.new )
            {
                if(accold.id == accnew.id && accold.phone !=accnew.phone)
                {
                    accnew.phone.adderror('phone cant changen1');
                }
            }
        }
    }

}