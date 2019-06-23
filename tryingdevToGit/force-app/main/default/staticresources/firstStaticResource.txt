List<Account> a=new List<Account>();
Account acct1 = new Account(Name='new name 22');
Account acct2 = new Account(Name='new name 33');
a.add(acct1);
a.add(acct2);
insert a;
*********************************************************
List<Account> a=new List<Account>();
Account acct1 = new Account(Name='upsert name 22');
a.add(acct1);
acct1.Name='upsert name';
Account acct2 = new Account(Name='new name 33');
a.add(acct2);
upsert a;
***************************************************************
0010o00002CKE5AAAX
List<Account> a=[select Id from Account where name=: 'new name 33'];
system.debug('id pf first:' + a[0]);
delete a;
****************************************************************************
List<Account> a=[select Id from Account where name=: 'new name 33' All Rows];
system.debug('id pf first:' + a[0]);
undelete a[0];
*****************************************************************************
Account a = new Account(Name='1');
insert a;
Account b = new Account(Name='2'); 
insert b;
Account c = new Account(Name='3'); 
insert c;

System.debug('a id' + a.Id);
System.debug('b id' + b.Id);
System.debug('c id' + c.Id);

merge a b;
*****************************************************************************
List<Account> aa=new List<Account>();
Account ac1=new Account(Name='ACC45');
aa.add(ac1);
Account ac2=new Account();
aa.add(ac2);
Database.SaveResult[] objres=database.insert(aa,false);
for(database.SaveResult ss: objres)
{
    if(ss.isSuccess())
        System.debug('Succcess');
    else
        System.debug('error'  + ss.getErrors());
}
*************************************************************************
public class Sample_Training_Acc {

    public static void CreateAcc(){
        try{
        Account aa= new Account(Name='DD');
        insert aa;
    }
    catch(DmlException dmex)
	{
	system.debug(dmex.getMessage());
	}
	catch(Exception ex)
    {
        system.debug('Exception'+ex.getCause());
    }
  }    
} 
***********************************************************************
trigger firstTrigger on Account (before insert,before update) {
    system.debug('hi i am a before trigger on insert');

}

List<Account> a= [select Id, Name from Account where Name=: 'ACC1'];
for(Account obj:a)
{
    obj.Name='Accenture'+obj.Name;    
}
update a;
**********************************************************************
trigger firstTrigger on Account (before insert,before update) {
  	if(trigger.isInsert)
    	system.debug('hi i am a before trigger on insert');
    if(trigger.isUpdate)
        system.debug('hi i am a before trigger on update');

}
*******************************************************************
trigger firstTrigger on Account (before insert,before update) {
  	for(Account o:Trigger.new)
    {
        system.debug('NAME'+o.Name);
        o.Name=o.Name + 'ACC_TrainingBatch';
    }
}
**********************************************************************
 <apex:page sidebar="false" >
     <apex:pageBlock title='{! $User.FirstName}'>
    	{! $User.FirstName & " " & $User.LastName}
    </apex:pageBlock>
</apex:page>
************************************************************************
  <apex:page standardController="Contact">
 	<apex:form>
     	<apex:pageBlock Title="EditContact"> 
        	<apex:pageBlockSection columns="1">
                <apex:inputField  value="{! Contact.FirstName}"/>
                <apex:inputField value="{! Contact.LastName}"/>
				<apex:inputField value="{! Contact.Email}"/>
                <apex:inputField value="{!Contact.Birthdate}"/>
            </apex:pageBlockSection>
            
            <apex:pageBlockButtons>
            	<apex:commandButton  action="{!save}" value="Save"/>
            </apex:pageBlockButtons>
        </apex:pageBlock>
     </apex:form>
     </apex:page>
**********************************************************************
<apex:page standardController="Account">
    <apex:detail />
</apex:page>

<apex:page standardController="Account">
    <apex:detail relatedList="false"/>
</apex:page>

<apex:page standardController="Account">
    <apex:detail relatedList="false"/>
    
    <apex:relatedList pageSize="3" list="Contacts"/>
</apex:page>


<apex:page standardController="Account">
	<apex:pageBlock>
    	<apex:pageBlockTable value="{!Account.Contacts}" var="obj">
        	<apex:column value="{!obj.FirstName}"/>
            <apex:column value="{!obj.LastName}"/>
            <apex:column value="{!obj.Phone}"/>
        </apex:pageBlockTable>
    </apex:pageBlock>    
</apex:page> 


*********************************************************************
<aura:component >
    <aura:attribute name='error' type='String' description='Display Name' default='ABC'/>
    
	<h1> {!'HELLO ' + v.error}</h1>
</aura:component>

<aura:application >
    <c:firstLC />
</aura:application>
******************************************************************************************
