public class AccountSearchLC {
    
    @AuraEnabled
    public static List<Account> fetchAccount(String searchKeyword){
        String searchKey=searchKeyword + '%';
        List <Account> lstOfAccounts=[select id, Name,Phone from Account where name like:
                                     searchKey LIMIT 5];
        return lstOfAccounts;
    }

}