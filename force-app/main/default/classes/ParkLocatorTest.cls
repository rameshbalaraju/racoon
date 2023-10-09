@isTest
public class ParkLocatorTest {

    @isTest
    static void testCallOut(){
     	Test.setMock(WebServiceMock.class, new ParkServiceMock());
        List<String> result = ParkLocator.country('India');
        List<String> parks = new List<String>();		
        parks.add('Heritage Park');
        parks.add('McAurthur Park');
        parks.add('Shadow Ridge Park');
        
        System.assertEquals(parks, result);
    }
}