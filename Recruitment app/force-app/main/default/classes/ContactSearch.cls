public class ContactSearch {
    public static Contact[] searchForContacts(String lname, String code){
       Contact[] con = [SELECT ID, FirstName, LastName FROM Contact WHERE (LastName=:lname AND MailingPostalCode=:code)];
        return con;
    }
}