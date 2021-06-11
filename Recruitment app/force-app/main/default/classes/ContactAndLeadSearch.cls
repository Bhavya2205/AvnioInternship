public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String fln){
        List<List<sObject>> searchedList = [FIND :fln IN NAME FIELDS RETURNING Contact(FirstName, LastName), Lead(FirstName, LastName)];
        
        System.debug(searchedList);
        return searchedList;
    }
}