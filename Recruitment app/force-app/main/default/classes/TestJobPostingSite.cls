@isTest(SeeAllData=true)
private class TestJobPostingSite {
    //test cases for JOB POSTING SITES Object
    @isTest static void CreateNewJPRecord(){
           //Create a recoed with required field missing
           Job_Posting_Site__c jp = new Job_Posting_Site__c();
           jp.Status__c='Active';
           insert jp;
        }
    @isTest static void CreateNewJPRecord1(){
            //Create a new JP record with only required fields
            Job_Posting_Site__c jp = new Job_Posting_Site__c(Name='Test Site');
            insert jp;
        }
    @isTest static void CreateNewJPRecord2(){
            //Create a new JP record with wrong picklist value 
            Job_Posting_Site__c jp = new Job_Posting_Site__c(Status__c='deactive');
            insert jp;
        }
    @isTest static void CreateNewJPRecord3(){
            //Create a new JP record with all the fields
            Job_Posting_Site__c jp = new Job_Posting_Site__c(Name='Test',Status__c='active',Technical_Site__c=False,
                                                             Job_Posting_Site_URL__c='www.xyz',Description__c='Test site');
            insert jp;
        }
}