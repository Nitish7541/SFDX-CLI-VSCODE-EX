public class ContactCreationQueueable implements queueable{

    private list<Account> accListToCreateContacts;
    public ContactCreationQueueable(list<Account> expectingAccountsFromTrigger)
    {
        this.accListToCreateContacts=expectingAccountsFromTrigger;
    }
    
    
    public void execute(queueableContext bc)
    {
        List<Contact> conListToInsert = new List<Contact>();
        
        //Loop on all accounts that are inserted 
        for(Account acc:accListToCreateContacts)
        {
            Contact con= new Contact();
            con.LastName= acc.name;
            con.AccountId=acc.id;
            conListToInsert.add(con); //add each contact to list
        }
        if(conListToInsert.size()>0)
		Insert conListToInsert;  
    }
    
    
}