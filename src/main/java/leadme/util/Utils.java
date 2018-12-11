package leadme.util;

import java.util.Map;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

public class Utils {
  
  public static Double getExchangeRate() {
    RestTemplate restTemplate = new RestTemplate();
    HttpHeaders headers = new HttpHeaders();
    headers.set("Content-Type", "application/json");
    
    HttpEntity<String> entity = new HttpEntity<>(headers);
    
    @SuppressWarnings("rawtypes")
    ResponseEntity<Map> response = restTemplate.exchange("https://earthquake.kr:23490/query/KRWUSD", HttpMethod.GET, entity, Map.class);
    
    
    String[] values = response.getBody().get("KRWUSD").toString().split(",");
    return Double.parseDouble(values[0].substring(1));
  }
  
}
