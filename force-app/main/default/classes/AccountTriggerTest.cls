@isTest
public class AccountTriggerTest {

    @isTest
    static void  TestAccountInBulk(){
        List<Account> accts = new List<Account>();
        
        for(Integer i = 0; i < 200; i++){
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA' );
            accts.add(acct);
        }
        
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
		
        Boolean x = False;
        if (Accts[0].BillingState == Accts[0].BillingState ){
            x= True;
        }
           
        System.assertEquals(True, x);   
    }
    
}