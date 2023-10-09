@isTest
public class AccountProcessorTest {
	@isTest
    public static void countContacts(){
        
        Account acct = new Account();
        acct.Name = 'Test';
        
        Insert acct;
        
        Contact cnt = new Contact();
        cnt.FirstName = 'Contact';
        cnt.LastName = 'last';
        cnt.AccountId = acct.Id;
        
        Insert cnt;
        
        List<String> acctIds = new List<String>();
        acctIds.add(acct.id);
        
        Test.startTest();
        AccountProcessor.countContacts(acctIds);
        Test.stopTest();
        
    }
    
}