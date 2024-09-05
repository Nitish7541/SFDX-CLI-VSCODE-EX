public class futureWx3 {

    
    public futureWx3()
    {
        home();
        house();
        
    }
    public static void home()
    {
        system.debug('home');
    }
    @future
    public static void house()
    {
        system.debug('house-future');
    }
}