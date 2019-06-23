public class ContactAndLeadSearch {
    public static list<list<sobject>> searchContactsAndLeads(string s)
    {
       List<List<sObject>> searchList= [Find :s in all fields returning contact(FirstName,LastName), lead(FirstName,LastName)];
        return searchList;
    }

}