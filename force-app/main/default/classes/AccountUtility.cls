public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account> accountsList = [Select Name, AnnualRevenue from Account];
        
        for(Account acct: accountsList){
            String acctRev = acct.Name +' : '+ acct.AnnualRevenue;
            system.debug(acctRev);
        }
    }
}