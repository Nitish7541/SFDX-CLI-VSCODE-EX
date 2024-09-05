trigger TriggerNewEx2 on Account (before insert) {

    if(trigger.isbefore && trigger.isinsert)

{
    for(account acc: trigger.new)
    {
        acc.numberofemployees=1277;
    }
}

}