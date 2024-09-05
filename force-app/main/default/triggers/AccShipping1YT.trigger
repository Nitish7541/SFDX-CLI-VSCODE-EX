trigger AccShipping1YT on Account (before insert,after insert,before update) {

    
    system.debug('trigger.new'+Trigger.New);
    //############################################
    if(trigger.isbefore && trigger.isinsert)
    {
        for(Account acc:Trigger.new)
        {
            if(acc.ShippingState==null)
                acc.ShippingState = acc.BillingState;
             if(acc.ShippingStreet==null)
                acc.ShippingStreet = acc.BillingStreet;
             if(acc.ShippingCity==null)
                acc.ShippingCity =acc.BillingCity;
             if(acc.ShippingCountry==null)
                acc.ShippingCountry = acc.BillingCountry;
             if(acc.ShippingPostalCode==null)
                acc.ShippingPostalCode = acc.BillingPostalCode;
        }
    }
    
    //###############################
    if(trigger.isafter && trigger.isinsert)
    {
       List<Contact> conRecordsList = new List<Contact>();
        for(Account accRec : trigger.new)
        {
            Contact con=new Contact();
            con.Lastname = accRec.name;
            con.AccountId=accRec.id;
            conRecordsList.add(con);
        }
        if(conRecordsList.size()>0)
            insert conRecordsList;
    }
    
    
    //##########################################
    
    if(trigger.isbefore && trigger.isupdate)
    {
        for(Account accRecNew :Trigger.new)
        {
            Account accOldRec = Trigger.oldMap.get(accRecNew.id);
            
                if(accRecNew.Name != accOldRec.Name)
                {
                    accRecNew.addError('account name1 camnmot be changed');
                }
            
        }
    
    }
   
    
    //###########################################
  
    
   
}