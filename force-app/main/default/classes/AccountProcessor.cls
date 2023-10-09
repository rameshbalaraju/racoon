public class AccountProcessor {
    @future(callout=true)
    public static void countContacts(List<String> accountIds){
        
        List<Account> accts = [Select Id from Account where Id in :accountIds];
        List<Account> updatedAccts = new List<Account>();
        for(Account acct: accts){
            List<Contact> contacts = [Select Id from Contact where Id = :acct.id];
            acct.Number_Of_Contacts__c = contacts.size();
            updatedAccts.add(acct);
        }
        update updatedAccts;
    }
}