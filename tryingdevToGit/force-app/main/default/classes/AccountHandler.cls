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
        catch(DmlException ee)
        {
            system.debug('error:' + ee.getMessage());
            return NULL;
        }

    }
}