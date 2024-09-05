trigger TriggerNewMapexn1 on account (after update) {

    if(trigger.isafter && trigger.isupdate)
    {
        map<id,account> amap=new map<id,account>();
        amap=trigger.newmap;

        list<contact> conlist = [select lastname,accountid,mailingcity from contact where accountid in:
        amap.keyset()];

        for(contact con: conlist)
        {
            account acc = amap.get(con.accountid);
            con.mailingcity=acc.billingcity;
        }
        update conlist;
    }

}