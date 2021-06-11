@isTest
public class TestTravelApproval {
    @isTest static void testdate(){
        Travel_Approval__c tp = new Travel_Approval__c(	Trip_Start_Date__c=date.parse('06/10/2021'),Trip_End_Date__c=date.parse('06/09/2021'));
        insert tp;
    }
    @isTest static void testworkflowforsamestate(){
        Travel_Approval__c tp = new Travel_Approval__c(Trip_Start_Date__c=date.parse('06/10/2021'),Trip_End_Date__c=date.parse('06/11/2021'),
                                                       Destination_State__c='TX');
        insert tp;
        //checkbox value=false
    }
    @isTest static void testworkflowdiffstate(){
        Travel_Approval__c tp = new Travel_Approval__c(Trip_Start_Date__c=date.parse('06/10/2021'),Trip_End_Date__c=date.parse('06/11/2021'),
                                                       Destination_State__c='US');
        insert tp;
        //checkbox value=true
    }
    @isTest static void createExpenses(){
        Travel_Approval__c tp = new Travel_Approval__c(Trip_Start_Date__c=date.parse('06/10/2021'),Trip_End_Date__c=date.parse('06/12/2021'),
                                                      Status__c='New');
        insert tp;
        Expense_Item__c exp = new Expense_Item__c(Travel_Approval__c=tp.ID,Expense_Type__c='Airfare',Amount__c=120);
        insert exp;
    }
}