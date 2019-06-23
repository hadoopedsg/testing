public class SearchAccounts {
    
    public SearchAccounts(ApexPages.StandardController stdController){
        
    }
    public String inputValue {get;set;}
    public List<Account> acc{get;set;}
  	public integer accountCount{get;set;}
    public Id cId{get;set;} 

    public PageReference executeSearch()
    {
 		 string searchstr=(inputValue+'%');
        acc=[select Id,Name,Phone from Account where name LIKE: searchstr limit 20];
        accountCount = [SELECT count() FROM Account where name LIKE :searchstr];
		return null;

    }
    public PageReference removeContact()

      {

              cId = ApexPages.currentPage().getParameters().get('delContact');
              Account act = [select Id from Account where Id=:cId];
                 // Database.query('select Id from Account where id='+cId);
              //System.debug('fetchID:' + act);
              delete act;
          	 return null;

      }
      public PageReference editContact()

      {

PageReference pageRef= new PageReference('/'+ApexPages.currentPage().getParameters().get('editAccount'));

pageRef.setredirect(true);

return pageRef;

      }
}