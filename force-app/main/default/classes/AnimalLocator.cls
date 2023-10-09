public class AnimalLocator {

    public static String getAnimalNameById(Integer Id){
        
        Http http = new Http();
        
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        String url = 'https://th-apex-http-callout.herokuapp.com/animals/'+ Id;
        req.setEndpoint(url);
        
        HttpResponse response = http.send(req);
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        Map<String, Object> animalProps = (Map<String, Object>)results.get('animal');
        
        return animalProps.get('name').toString();
    }
}