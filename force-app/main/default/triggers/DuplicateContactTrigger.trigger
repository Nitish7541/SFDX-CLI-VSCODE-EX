trigger DuplicateContactTrigger on Account (after insert) {

    if(trigger.isafter && trigger.isinsert)
    {
        list<contact> conlist=new list<contact>();

        for(account acc:trigger.new)
        {
            contact con=new contact();
            con.lastname=acc.name;
            con.accountid=acc.id;
            conlist.add(con);
    
        }
        insert conlist;
    }
    

}