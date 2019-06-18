trigger CloudNewsTrigger on Cloud_News__e (after insert) {
	List<Case> cases=new List<Case>();
    Group queue= [SELECT Id FROM Group WHERE Name='Regional Dispatch' AND Type='Queue'];
    for(Cloud_News__e event:Trigger.new)
    {
        if(event.Urgent__c==True)
        {
            Case cs=new Case();
            cs.Priority='High';
            cs.Subject='New team dispatch to: ' + event.Location__c;
            cs.OwnerId=queue.id;
            cases.add(cs);
        }
    }
    
}