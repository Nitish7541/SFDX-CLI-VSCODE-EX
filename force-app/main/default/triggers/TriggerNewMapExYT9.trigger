trigger TriggerNewMapExYT9 on Account (after update)
{

    if(trigger.isafter && trigger.isupdate)
    {  
        map<id,account> nMap= new map<id,account>();
        nMap = trigger.newmap;
        
        list<contact> conl = [select lastname,accountid,mailingcity from contact where accountid in: nMap.keyset()];

        for(contact con:conl)
        {
                account a=nMap.get(con.accountid);
                con.mailingcity= a.billingcity;
        
        }
        update conl;
        
    }  
}