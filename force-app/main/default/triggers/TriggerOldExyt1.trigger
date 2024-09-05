trigger TriggerOldExyt1 on account (before update) {

  if(trigger.isbefore && trigger.isupdate)
  {

    for(account accOld: trigger.old)
    {
        for(account accNew : trigger.new)
        {
            if(accOld.id == accNew.Id && accOld.phone != accNew.phone)
            accNew.phone.addError('phone number cannot be changed');
        }
    }

  }


}