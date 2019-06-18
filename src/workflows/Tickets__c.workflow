<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>waitingrule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Concert__c.Remaining_Tickets__c</field>
            <operation>lessOrEqual</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>waitingrule1</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Concert__c.Remaining_Tickets__c</field>
            <operation>lessOrEqual</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
