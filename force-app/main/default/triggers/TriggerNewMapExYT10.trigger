trigger TriggerNewMapExYT10 on Account (after update) {

    if(trigger.isafter && trigger.isupdate)
    {
        map<id,account> nmap= new map<id,account>();
        nmap=trigger.newmap;
        
        list<contact> conl = [select lastname,accountid,mailingcity from contact where accountid in:nmap.keyset()];
        
        for(contact con:conl)
        {
	
			account a= nmap.get(con.accountid);
            con.mailingcity = a.billingcity;
        }
        
        update conl;
        
    } 
    
}