import system.http.*;
import system.debug.*;

public class CatholicHierarchyFetcher {

  // Define API endpoint URL
  private static final String API_ENDPOINT = 'http://www.catholic-hierarchy.org/bishop/srch2c.html';

  // Method to fetch data for a given name
  public static void fetchOldestHierarchy(String name) {
    // Create a new HTTP request object
    HttpRequest request = new HttpRequest();

    // Set request parameters
    request.setEndpoint(API_ENDPOINT);
    request.setMethod('POST');
    request.setHeader('Content-Type', 'application/x-www-form-urlencoded');
    request.setBody('name=' + EncodingUtil.urlEncode(name, 'UTF-8'));

    // Send request and get response
    Http http = new Http();
    HttpResponse response = http.send(request);

    // Parse response HTML to find oldest person in hierarchy
    if (response.getStatusCode() == 200) {
      String responseHtml = response.getBody();

      // Find oldest person in hierarchy
      Integer oldestAge = null;
      String oldestName = null;
      for (String line : responseHtml.split('\n')) {
        if (line.contains('<td class="text">', '</td><td class="text">')) {
          Integer age = null;
          String bishopName = null;
          for (String cell : line.split('</td><td class="text">')) {
            cell = cell.replaceAll('<.*?>', '');
            if (age == null && cell.isNumeric()) {
              age = Integer.valueOf(cell);
            } else if (bishopName == null && cell != '') {
              bishopName = cell.trim();
            }
          }
          if (bishopName != null && (oldestAge == null || age < oldestAge)) {
            oldestAge = age;
            oldestName = bishopName;
          }
        }
      }

      // Print oldest person in hierarchy
      if (oldestName != null) {
        System.debug(oldestName + ', age ' + oldestAge);
      } else {
        System.debug('No hierarchy data found for ' + name);
      }
    } else {
      System.debug('Failed to fetch hierarchy data for ' + name + ': ' + response.getStatusCode() + ' ' + response.getStatus());
    }
  }

}
