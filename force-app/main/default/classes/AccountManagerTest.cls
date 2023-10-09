@IsTest
public class AccountManagerTest {

    @IsTest static void testGetAccountById(){
        Id recordId = createTestRecord();
        
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://curious-raccoon-bif0df-dev-ed.trailblaze.lightning.force.com/services/apexrest/Accounts/'+recordId+'/contacts'
            + recordId;
        request.httpMethod = 'GET';
        RestContext.request = request;
        
        Account acct = AccountManager.getAccount();
        
        System.assert(acct != null);
        System.assertEquals('Test Account', acct.Name);
    }
    
    
	static Id createTestRecord() {
        // Create test record
        Account account = new Account(
            Name = 'Test Account');
        insert account;
        Contact cnt = new Contact(
        	FirstName = 'Test',
            LastName = 'test',
            accountId = account.Id
        );
        insert cnt;
        return account.Id;
    } 
}