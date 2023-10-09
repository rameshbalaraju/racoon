@isTest
global class ParkServiceMock implements WebServiceMock{
global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
    String responseType) {
        ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
        List<string> parks = new List<string>();
        parks.add('Heritage Park');
        parks.add('McAurthur Park');
        parks.add('Shadow Ridge Park');
        response_x.return_x = parks;
        
        response.put('response_x', response_x);
    }
}