@isTest
public class AddPrimaryContactTest {

    @TestSetup
    static void TestSetup(){
        List<Account> lstAccounts = new List<Account>();
        
        for(Integer i = 0; i < 50; i++){
            lstAccounts.add(new Account(name='Test', BillingState = 'NY'));
            lstAccounts.add(new Account(name='Test', BillingState = 'CA'));
        }
        
        insert lstAccounts;
    }
    
    @isTest
    static void insertContact(){
        
        Contact ct = new Contact();
        ct.FirstName = 'First';
        ct.LastName = 'last';        
        
		AddPrimaryContact apc = new AddPrimaryContact(ct, 'CA');
        Test.startTest();
        System.enqueueJob(apc);
        Test.stopTest();
        
    }
}