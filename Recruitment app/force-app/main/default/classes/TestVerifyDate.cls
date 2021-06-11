@isTest
public class TestVerifyDate {
    @isTest static void testDate1(){ //to check if date2 is out range, date1 is displayed
        Date date1 = System.today();
        Date date2 = System.today().addDays(31);
        Date date3 = verifyDate.CheckDates(date1 , date2);
        System.assertEquals(date3, date1);
    }
     @isTest static void testDate2(){ //if date2 in range then date2 is displayed
        Date date1 = System.today();
        Date date2 = System.today().addDays(22);
        Date date3 = verifyDate.CheckDates(date1 , date2);
        System.assertEquals(date3, date2);
    }
}