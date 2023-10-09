public class AccountHandler {
    public static void insertAccount(Integer numberOfAccounts){
        List<Account> addAccounts = new List<Account>();
        Integer N = 0;
        While( N <= numberOfAccounts) {
            
            Account acct = new Account(
            Name = 'Acme Inc ' + N,
            AccountNumber = 'A000'+ N 
            );
            addAccounts.add(acct);
            N = N + 1;
        }
        
        insert addAccounts;
    }
}