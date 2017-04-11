<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Effective</fullName>
        <field>Effective_From__c</field>
        <formula>Today()</formula>
        <name>Effective</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Effective1</fullName>
        <field>Effective_From__c</field>
        <formula>Today()</formula>
        <name>Effective1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Effective2</fullName>
        <field>Effective_To__c</field>
        <formula>IF( ISCHANGED( Visit_Address__c ) ,  TODAY() , null)</formula>
        <name>Effective2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Effective3</fullName>
        <field>Effective_From__c</field>
        <formula>Today()</formula>
        <name>Effective3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>effective_4</fullName>
        <field>Effective_To__c</field>
        <formula>IF( ISCHANGED( Active__c ) , TODAY() , null)</formula>
        <name>effective 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Rule1</fullName>
        <actions>
            <name>Effective</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Address__c.Visit_Address__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Address__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Patient Address</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule2</fullName>
        <actions>
            <name>Effective2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Address__c.Visit_Address__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Address__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Patient Address</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule3</fullName>
        <actions>
            <name>Effective3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and 2</booleanFilter>
        <criteriaItems>
            <field>Address__c.Active__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Address__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Supply Chain Address</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule5</fullName>
        <actions>
            <name>effective_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Address__c.Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Address__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Supply Chain Address</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>