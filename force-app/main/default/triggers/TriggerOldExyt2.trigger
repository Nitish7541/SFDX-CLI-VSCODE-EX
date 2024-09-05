trigger TriggerOldExyt2 on opportunity (before update) {


    if(trigger.isbefore && trigger.isupdate)
{

        for(opportunity oppOld :trigger.old)
        {
            for(opportunity oppNew: trigger.new)
            {
                if(oppOld.amount != oppNew.amount)
                oppNew.amount.addError('amount cannot be changed');
            }
        }


}

}