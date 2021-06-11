@isTest
public class TestRestrictContactByName {
    @isTest static void testLastName(){
        Contact con = new Contact(LastName = 'InvalidName');
        Database.SaveResult result = Database.insert(con);
        //System.assert(!result.isSuccess());
        //System.assert(result.getErrors().size()>0);
        System.assertEquals('The Last Name "'+con.LastName+'" is not allowed for DML', 
                           result.getErrors()[0].getMessage());
    }
}