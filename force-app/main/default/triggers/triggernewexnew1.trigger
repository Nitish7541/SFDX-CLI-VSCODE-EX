trigger triggernewexnew1 on account (before update) {

    if(trigger.isbefore && trigger.isupdate)
    {
         
            for (Account acc : Trigger.new) {
                Account oldAcc = Trigger.oldMap.get(acc.Id);
        
                // Check if the previous phone value is not null and the new value is different
                if (oldAcc.phone != null && acc.phone != oldAcc.phone) {
                    acc.addError('phone no ! cannot be changed.');
                }
            }
        }
        
    }

