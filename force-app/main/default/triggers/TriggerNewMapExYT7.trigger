trigger TriggerNewMapExYT7 on Account (after update) {

    if(trigger.isafter && trigger.isupdate)
    {
        map<id,account> nMap = new map<id,Account>();
        nMap=trigger.newmap;
        
        list<Contact> cList = [select lastname,accountid,mailingcity from contact where accountid in: nMap.keyset()];
        for(contact con:cList)
        {
            account a=nmap.get(con.accountid);
            con.mailingcity= a.billingcity;
        }
        update clist;
        
    }
    
    
    
}