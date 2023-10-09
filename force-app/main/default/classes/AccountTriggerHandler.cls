public class AccountTriggerHandler {

    public static void CreateAccounts(List<Account> accList){
	       for(Account acc: accList){
            
             if(acc.BillingState!=null){
               acc.ShippingState = acc.BillingState ;
            }
        }
    }
    
}