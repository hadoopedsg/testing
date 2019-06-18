global class ChangeUser implements Database.Batchable<sObject>
{
	global String query;
    global string email;
    global id toId;
    global id fromId;
    
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> scope)
    {	
            List<Account> accns = new List<Account>();

        for(sObject s:scope)
        {
            Account a=(Account) s;
            if(a.OwnerId==fromId)
            {
                a.OwnerId=toId;
                accns.add(a);
            }
        }
        update accns;
    }
    global void finish(Database.BatchableContext BC)
    {
     	Messaging.SingleEmailMessage m= new Messaging.SingleEmailMessage();
        m.setToAddresses(new String[] {email});
        m.setReplyTo('shubhamgargss27@gmail.com');
        m.setSenderDisplayName('Batch Process');
        m.setSubject('Batch Process Completion');
        m.setPlainTextBody('Batch Completed');
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { m });

        
    }
}
/*
ChangeUser sr=new ChangeUser();
sr.query='SELECT Id, Name, Ownerid FROM Account ' + 'WHERE ownerid=\'' + UserInfo.getUserId() + '\'';
sr.email='shubhamgargss27@gmail.com';
sr.fromId=UserInfo.getUserId();
sr.toId='0050o00000Uw4lj';
Id batchid=Database.executeBatch(sr);
*/