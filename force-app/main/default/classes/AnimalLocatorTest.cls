@isTest
public class AnimalLocatorTest {    
    @isTest
    static void testCallOut(){
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
        
        String response = AnimalLocator.getAnimalNameById(0);
        System.assertEquals('bear', response);
    }
}