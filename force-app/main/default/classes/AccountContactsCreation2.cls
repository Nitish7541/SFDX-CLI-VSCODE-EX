public class AccountContactsCreation2 implements queueable {
    
    private list<Account> accempty;
    public AccountContactsCreation2(List<Account> expectingAccoountsFromTrigger)
    {
        this.accempty =expectingAccoountsFromTrigger;
    }
  //commented
    public void execute(queueableContext qc)
    {
	 List<Contact> conListToInsert = new List<Contact>();
        for(Account acc: accempty)
        {
		Contact con=new Contact();
        con.LastName=acc.name;
        con.AccountId=acc.id;
        conListToInsert.add(con);
            
        }  
        if(conListToInsert.size()>0)
        Insert conListToInsert;
    }  
}