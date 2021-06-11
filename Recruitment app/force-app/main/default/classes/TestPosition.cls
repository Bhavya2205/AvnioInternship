@isTest
public class TestPosition {
    //test cases for POSITION object
    
    // for default record type: Technical Record type
    
    
    @isTest static void CreateNewPosRecord(){
            //Create a new Pos record with all the fields for default record type
            Position__c pos = new Position__c(Name='Test Position',Status__c='New',Approval_Status__c='Approved',
                                              Department__c='Engineering',Location__c='US');
            insert pos;
        }
    @isTest static void CreateNewPosRecord1(){
            //Create a new Pos record with all the fields for default record type and wrong department
            Position__c pos = new Position__c(Name='Test Position',Status__c='New',Approval_Status__c='Approved',
                                              Department__c='Sales',Location__c='US');
            insert pos;
        }
    @isTest static void CreateNewPosRecord2(){
            //Create a new Pos record with all the fields for default record type correct department but wrong related pos
            Position__c pos = new Position__c(Name='Test Position',Status__c='New',Approval_Status__c='Approved',
                                              Department__c='Engineering',Location__c='US',Related_Position__c='a085g000002JzIHAA0');
            insert pos;
        }
    @isTest static void CreateNewPosRecord3(){
            //Create a new Pos record with wrong picklist values for for status and approval status
            Position__c pos = new Position__c(Name='Test Position',Status__c='Newer',Approval_Status__c='pproved',
                                              Department__c='Engineering',Location__c='US');
            insert pos;
           // no error as picklist values are not restricted while creating the fields
        }
    
    //for Non-Technical record type
    @isTest static void CreateNewPosRecord4(){
            //Create a new Pos record with all the fields for not-technical record type
            Id nontech = Schema.SObjectType.Position__c.getRecordTypeInfosByName().get('Nontechnical Position').getRecordTypeId();
            Position__c pos = new Position__c(Name='Test Position',Status__c='New',Approval_Status__c='Approved',
                                              Department__c='Sales',Location__c='US',Related_Position__c='a085g000002JzIHAA0',
                                              RecordTypeId=nontech);
            insert pos;
        }
    @isTest static void CreateNewPosRecord5(){
            //Create a new Pos record with wrong department
            Id nontech = Schema.SObjectType.Position__c.getRecordTypeInfosByName().get('Nontechnical Position').getRecordTypeId();
            Position__c pos = new Position__c(Name='Test Position',Status__c='New',Approval_Status__c='Approved',
                                              Department__c='IT',Location__c='US',Related_Position__c='a085g000002JzIHAA0',
                                              RecordTypeId=nontech);
            insert pos;
        }

}