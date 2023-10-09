@isTest
public class TestRestrictContactByName {

    @isTest
    public static void TestInvalidName(){
        Contact cnt = new Contact();
        cnt.LastName = 'INVALIDNAME';
        insert cnt;
        
		// Perform test
        Test.startTest();
        Database.SaveResult result = Database.insert(cnt, false);
        Test.stopTest();
        
        System.assertEquals('The Last Name INVALIDNAME is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
    
}