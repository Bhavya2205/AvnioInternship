public class AccountHandler {
    public static Account insertNewAccount(String n){
        Account acc = new Account();
        try{
            acc.Name = n;
            insert acc;
            return acc;
        }
        catch(DmlException e){
            //System.debug('A DML exception has occurred: ' + e.getMessage());\
            return null;
        }
    }
}