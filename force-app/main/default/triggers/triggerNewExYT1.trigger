trigger triggerNewExYT1 on Account (before insert) {

   /*Account acc=trigger.new[0];
    acc.numberofemployees=1270;*/

    //bulkify code

    for(account acc:trigger.new)
    {
        acc.numberofemployees=1227;
    }

}