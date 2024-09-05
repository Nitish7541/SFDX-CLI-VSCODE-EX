trigger TriggerNewMapExYT8 on Account (after update) {
    
    if(trigger.isafter && trigger.isupdate)
    {
        map<id,account> nMap = new map<id,account>();
        nmap=trigger.newmap;
        
        list<contact> cList = [select lastname,mailingcity,accountid from contact where accountid in:nmap.keyset()];
        
        
        for(contact con:cList)
        {
            account a = nmap.get(con.accountid);
            con.mailingcity = a.billingcity;
        }
        
        
        update clist;
   
         }
 
}