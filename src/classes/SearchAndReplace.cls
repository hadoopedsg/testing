global class SearchAndReplace implements Database.Batchable<sObject> 
{
	global final string Query;
    global final string Entity;
    global final string Field;
    global final string Value;
    
    global SearchAndReplace(String q,String e,String f,String v)
    {
        Query=q; Entity=e; Field=f; Value=v;
    }
    
    global Database.QueryLocator start (Database.BatchableContext BC)
    {
        return Database.getQueryLocator(Query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> scope)
    {
        for (sObject s: scope)
        {
            s.put(Field,Value);
        }
        update scope;
    }
    global void finish(Database.BatchableContext BC)
    {
        
    }
}