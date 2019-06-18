public class FutureMethods {
    
    @future
    public static void futuristic(ID recID)
    {
        Account acct=[Select Name,Phone  from Account where ID =:recID];
        system.debug(acct);
       
    }
    
  
}