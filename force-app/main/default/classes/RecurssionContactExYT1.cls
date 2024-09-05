public class RecurssionContactExYT1 {
		
    public static boolean isTriggerRan=false;
    public static void duplicateContact(List<Contact> newCon)
    {
        List<Contact> duplicateContactInserted = new List<Contact>(); 
        for(Contact acc:newCon)
        {
            Contact con1=new Contact();
            con1.lastname= 'Duplicate Contact';
            duplicateContactInserted.add(con1);                        
        }
        Insert duplicateContactInserted;
    }
    
}