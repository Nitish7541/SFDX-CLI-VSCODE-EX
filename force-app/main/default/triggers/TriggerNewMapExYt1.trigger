trigger TriggerNewMapExYt1 on account (after update) {

    if(trigger.isafter && trigger.isupdate)
    {
        map<id,account> nMap= new map<id,account>();
        nMap=trigger.newmap;

        list<contact> clist = [select lastname,accountid,mailingcity from contact where 
        accountid in : nmap.keyset()];


        for(contact con: clist)
        {
                account a= nMap.get(con.accountid);
                con.mailingcity = a.billingcity;
        }

        update clist;


    }

}