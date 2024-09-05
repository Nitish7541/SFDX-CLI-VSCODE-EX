public class FutureMethodYTSE1 {

    public FutureMethodYTSE1(){
        takeShower();
		breakfast ();  
        carService();
        watchingMovie();
    }
     public static void   takeShower()
    {
        system.debug('take shower11');
    }
    public static void breakfast()
    {
		system.debug('breakfast11'); 
        system.debug('correct');
    }
    @future
    public static void carService()
    {
        system.debug('car service11');
    }
    public static void watchingMovie()
    {
        system.debug('watching movie11');
    }  
    
}