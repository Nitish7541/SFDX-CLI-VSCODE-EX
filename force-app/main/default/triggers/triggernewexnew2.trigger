trigger triggernewexnew2 on account (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
        for(account acc:trigger.new)
        {
           account accold = trigger.oldmap.get(acc.id);
           if(accold.phone != null && acc.phone !=accold.phone)
           {
            accold.phone.adderror('phone cant be chabgeds');
           }

        }
    }

}