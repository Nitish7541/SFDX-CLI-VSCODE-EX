trigger TriggerNewMapExYt2 on account (before update) {

    if(trigger.isbefore && trigger.isupdate)

    {
        map<id,account> nMap= new map<id,account>();
        nmap = trigger.newmap;

        list<contact> conlist = [select lastname,accountid,mailingcity from contact 
        where accountid in : nmap.keyset()];

        for(contact con : conlist)
        {
            account a = nMap.get(con.accountid);
            con.mailingcity = a.billingcity;
        }
        update conlist;
    }




}