@isTest
private class TestReview {
    //test cases for REVIEW object
     @isTest static void CreateNewRevRecord(){
            //Create a new review with required fields missing
            Review__c rev = new Review__c(Core_Competencies__c='2', Leadership_Skills__c='3', Experience__c='3');
            insert rev;
        }
    @isTest static void CreateNewRevRecord1(){
            //Create a new review with required fields filled
            //gave record id of existing job application
            Review__c rev = new Review__c(Job_Application__c='a075g000002n0NGAAY',Core_Competencies__c='2', Leadership_Skills__c='3', Experience__c='3');
            insert rev;
            System.debug('Success');
        }
    @isTest static void CreateNewRevRecord2(){
            //Create a new review with required fields filled
            //giving not values that are not given in picklist
            Review__c rev = new Review__c(Job_Application__c='a075g000002n0NGAAZ',Core_Competencies__c='0', Leadership_Skills__c='6', Experience__c='-1');
            insert rev;
        }
    @isTest static void CreateNewRevRecord3(){
            //Create a new review with required fields filled
            //gave record id of existing job application
            Review__c rev = new Review__c(Job_Application__c='a075g000002n0NGAAY',Core_Competencies__c='2', Leadership_Skills__c='3', Experience__c='3');
            insert rev;
            System.debug('Success');
        }
    @isTest static void CreateNewRevRecord4(){
            //Create a new review with all the fields
            Review__c rev = new Review__c(Job_Application__c='a075g000002n0NGAAY',
                                          Core_Competencies__c='2',Core_Competencies_Comments__c='Good',
                                          Leadership_Skills__c='3',Leadership_Skills_Comments__c='Good',
                                          Experience__c='3',Experience_Comments__c='Good',
                                          Recommend_for_Hire__c=True,Reason_Recommended__c='Good');
            insert rev;
        }
    @isTest static void CreateNewRevRecord5(){
            //Create a new interviewer and using that in creating the record
            //Create new Position for interviewer
            Position__c pos = new Position__c(Name='Test Position');
            // using employee id
            Interviewer__c itwr = new Interviewer__c(Employee__c='00e5g000002RllT',	Position__c=pos.ID);	
            Review__c rev = new Review__c(Interviewer__c=itwr.ID,Job_Application__c='a075g000002n0NGAAY',
                                          Core_Competencies__c='2',
                                          Leadership_Skills__c='3',
                                          Experience__c='3');
            insert rev;
        }
    @isTest static void CreateNewRevRecord6(){
            //Create a new Job Application and using that in creating the record
            Job_Application__c jap = new Job_Application__c(Candidate__c='a055g000000Q3etAAC',Position__c='a085g000002JzIHAA0');
            insert jap;
            Interviewer__c itwr = new Interviewer__c(Employee__c='00e5g000002RllT');
            Review__c rev = new Review__c(Interviewer__c=itwr.ID,Job_Application__c=jap.ID,
                                          Core_Competencies__c='2',
                                          Leadership_Skills__c='3',
                                          Experience__c='3');
            insert rev;
        }
    @isTest static void CreateNewRevRecord7(){
            //Create a new Job Application and create new candidate and position
            Candidate__c cad = new Candidate__c(First_Name__c='Test candidate');
            insert cad;
            //position for default record type
            Position__c cadpos = new Position__c(Name='Test Position');
            insert cadpos;
            Job_Application__c jap = new Job_Application__c(Candidate__c='a055g000000Q3etAAC',Position__c='a085g000002JzIHAA0');
            insert jap;
            //Create new interviewer record
            Position__c itwrpos = new Position__c(Name='Test Position');
            insert itwrpos;
            // using employee id
            Interviewer__c itwr = new Interviewer__c(Employee__c='00e5g000002RllT',	Position__c=itwrpos.ID);
            Review__c rev = new Review__c(Interviewer__c=itwr.ID,Job_Application__c=jap.ID,
                                          Core_Competencies__c='2',
                                          Leadership_Skills__c='3',
                                          Experience__c='3');
            insert rev;
        }
    @isTest static void CreateNewRevRecord8(){
            //Create a new Job Application and create new candidate and position
            Candidate__c cad = new Candidate__c(First_Name__c='Test candidate');
            insert cad;
            //position for non technical record type
            Id nontech = Schema.SObjectType.Position__c.getRecordTypeInfosByName().get('Nontechnical Position').getRecordTypeId();
            Position__c cadpos = new Position__c(Name='Test Position',Department__c='Sales',RecordTypeId=nontech);
            insert cadpos;
            Job_Application__c jap = new Job_Application__c(Candidate__c='a055g000000Q3etAAC',Position__c='a085g000002JzIHAA0');
            insert jap;
            //Create new interviewer record
            Position__c itwrpos = new Position__c(Name='Test Position');
            insert itwrpos;
            // using employee id
            Interviewer__c itwr = new Interviewer__c(Employee__c='00e5g000002RllT',	Position__c=itwrpos.ID);
            Review__c rev = new Review__c(Interviewer__c=itwr.ID,Job_Application__c=jap.ID,
                                          Core_Competencies__c='2',
                                          Leadership_Skills__c='3',
                                          Experience__c='3');
            insert rev;
        }
}