public class Account_handler {
    
    public static Account insertNewAccounthi(String s)
    {
        try
        {
        	Account a=new Account(Name=s);
        	insert a;
            return a;
        }
        //hyeeeee
        catch(DmlException e)
        {
            system.debug('error:' + e.getMessage());
            return NULL;
        }
        
        
    }

}