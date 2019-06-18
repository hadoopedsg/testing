public class AccountController {

    @AuraEnabled
    public static List<Account> getAccounts()
    {
        return [select Id, Name, Phone from Account];
    }
    
 
   
}