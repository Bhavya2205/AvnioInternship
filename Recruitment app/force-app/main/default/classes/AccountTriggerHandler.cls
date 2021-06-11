public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acc){
        for(Account a:acc){
            if(a.ShippingState!=a.BillingState){
            a.ShippingState=a.BillingState;
        	}
        }
    }
}