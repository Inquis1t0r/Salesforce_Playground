public class CurrentTemperatureController {
    @AuraEnabled
    public static String getCurrentTemperature(String city) {
        String endpoint = 'http://api.openweathermap.org/data/2.5/weather?q=' + EncodingUtil.urlEncode(city, 'UTF-8') + '&appid=<your_api_key>&units=metric';
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> main = (Map<String, Object>) results.get('main');
            return String.valueOf(main.get('temp'));
        }
        else {
            return null;
        }
    }
}
