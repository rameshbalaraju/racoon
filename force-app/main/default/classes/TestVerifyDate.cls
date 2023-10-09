@isTest
public class TestVerifyDate {

    @isTest
    public static void CheckDatesWithin30Days(){
        Date fromDate = Date.valueOf('2023-09-15');
        Date todaysDate = VerifyDate.CheckDates(fromDate, System.today());
        System.assertEquals(todaysDate, System.today());
    }
    
	@isTest
    public static void SetEndOfMonthDate(){
        Date fromDate = Date.valueOf('2023-09-15');
        Date ToDate = Date.valueOf('2023-09-14');
        Date endOfMonth = Date.valueOf('2023-09-30');
        Date endOfMonth1 = VerifyDate.CheckDates(fromDate, ToDate);
        System.assertEquals(endOfMonth, endOfMonth1);
    }
}