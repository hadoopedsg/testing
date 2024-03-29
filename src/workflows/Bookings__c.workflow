<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>For_trip_confirmation</fullName>
        <description>For trip confirmation</description>
        <protected>false</protected>
        <recipients>
            <recipient>gargsg2211@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Trip_Confirmation</template>
    </alerts>
    <fieldUpdates>
        <fullName>StatusUpdate</fullName>
        <field>Status__c</field>
        <literalValue>In Process</literalValue>
        <name>StatusUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ewf</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>ewf</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>finalStatus</fullName>
        <field>Status__c</field>
        <literalValue>Send Schedule Details</literalValue>
        <name>finalStatus</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>finalreject</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>finalreject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>TripBookings</fullName>
        <actions>
            <name>For_trip_confirmation</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Bookings__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>af</fullName>
        <actions>
            <name>ewf</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>ADV_Customer__c.Age__c</field>
            <operation>equals</operation>
            <value>12</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
