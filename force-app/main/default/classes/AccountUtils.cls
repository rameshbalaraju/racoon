public class AccountUtils {
    public static List<Account> accountsByState(string state){
        List<Account> accountMap = [SELECT Id, Name FROM Account where BillingState = :state];
        return accountMap;
    }
}