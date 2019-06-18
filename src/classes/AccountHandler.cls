public class AccountHandler {
    
    public static Account insertNewAccount(String s)
    {
        try
        {
        	Account a=new Account(Name=s);
        	insert a;
            return a;
        }
        //1234567
        catch(DmlException e)
        {
            system.debug('error:' + e.getMessage());
            return NULL;
        }

    }
}