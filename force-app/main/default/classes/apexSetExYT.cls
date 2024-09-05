public class apexSetExYT {

	public static void myMethod()
    {
			set<Account> setex = new set<Account>();
        	 Account a1=new Account(name='flipkarta',phone='9956645339');
        	 Account a2=new Account(name='flipkartb',phone='9956645384');
        	 Account a3=new Account(name='flipkartc',phone='99568945634');
        	 Account a4=new Account(name='flipkartd');
        
        	/*setex.add(a1);
        	setex.add(a2);
        	setex.add(a3);
        	setex.add(a4);*/
        

			System.debug('Inserted Accounts: ' + setex);   
        
        // Convert the Set to a List before the DML operation
        List<Account> accountList = new List<Account>(setex);
       
        // Using a for-each loop to iterate over the List of Accounts
        for (Account acc : accountList) {
            System.debug('Inserting Account: ' + acc);
        }
         insert accountList;
        
    }
    
    
}