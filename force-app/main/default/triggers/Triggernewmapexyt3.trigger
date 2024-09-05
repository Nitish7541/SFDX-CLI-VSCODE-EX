trigger Triggernewmapexyt3 on account (before update) {

if(trigger.isbefore && trigger.isupdate)
{

    map<id,account> aMap = new map<id,account>();
    aMap = trigger.newmap;

    list<contact> conlist = [select lastname,accountid,mailingcity from contact where accountid in: 
    amap.keyset()];

    for(contact con: conlist)
    {
        account a = amap.get(con.accountid);
        con.mailingcity=a.billingcity;
    }
    update conlist;

}


}