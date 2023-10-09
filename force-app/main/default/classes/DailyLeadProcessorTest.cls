@isTest
public class DailyLeadProcessorTest {

    public static String CRON_EXP = '2 01 0 26 9 ? 2042';
    
    @TestSetup
    public static void setup()
    {
        
        List<Lead> leads = new List<Lead>();
        for(Integer i = 0; i < 200; i++){
            leads.add(new Lead(FirstName = 'FirstName', LastName='last', Company='Company'));
        }
        
        insert leads;
    }
    
    @isTest
    public static void test(){
        
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP,
            new DailyLeadProcessor());
        
        
        Test.stopTest();
        
        
        List<Lead> lt1 = [SELECT Id
                         FROM Lead
                         WHERE LeadSource = 'Dreamforce'];
        
        System.assertEquals(200, lt1.size(), 'LeadSource Updated');
        
    }
    
}