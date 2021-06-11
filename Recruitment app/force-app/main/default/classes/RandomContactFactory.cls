public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer noOfContacts, String lName){
        List<Contact> con = new List<Contact>();
        for(Integer i=1; i<=noOfContacts; i++){
            Contact c = new Contact(FirstName = 'Test '+ i,
                                   LastName = lname);
            con.add(c);
        }
        return con;
    }
}