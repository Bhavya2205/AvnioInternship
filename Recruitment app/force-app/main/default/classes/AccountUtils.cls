public class AccountUtils {
    public static List<Account> accountsByState(String s){
        List<Account> acc=[Select Id , Name FROM Account WHERE billingState=:s];
        return acc;
    }
}