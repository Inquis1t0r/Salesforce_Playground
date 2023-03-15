public class GeoLocator {
    
    public static Map<String, Decimal> getCoordinates(String cityName) {
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://maps.googleapis.com/maps/api/geocode/json?address=' + cityName + '&key=<your_google_maps_api_key_here>');
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            
            List<Object> geometry = (List<Object>) ((Map<String, Object>) ((Map<String, Object>) results.get('results')).get(0)).get('geometry');
            Map<String, Decimal> location = new Map<String, Decimal>();
            location.put('latitude', (Decimal) ((Map<String, Object>) geometry.get(0)).get('lat'));
            location.put('longitude', (Decimal) ((Map<String, Object>) geometry.get(0)).get('lng'));
            
            return location;
        } else {
            return null;
        }
        
    }
    
}
