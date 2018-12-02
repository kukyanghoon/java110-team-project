package leadme.service.impl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import leadme.service.KftcService;

@Service
public class KftcServiceImpl implements KftcService {

    @Override
    public String requestToken() {
        
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        
        params.add("client_id", "l7xxd19bee30de034dcaa0ddf7ec3fe11792");
        params.add("client_secret", "90aca2eab4f04ee28f68ef4d8f1105fa");
        params.add("scope", "oob");
        params.add("grant_type", "client_credentials");
        
        RestTemplate restTemplate = new RestTemplate();
        
        String returnData = restTemplate.postForObject("https://testapi.open-platform.or.kr/oauth/2.0/token", params, String.class);
        
        
        return returnData;
        
        
    }
    
    @Override
    public void realName(String token, String data) {
        
        RestTemplate restTemplate = new RestTemplate();
        
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.setBearerAuth(token);
        
        HttpEntity<String> request = new HttpEntity<>(data,headers);
        
        ResponseEntity<String> response = restTemplate.postForEntity("https://testapi.open-platform.or.kr/v1.0/inquiry/real_name", request, String.class);
        
        System.out.println("응답값 : " + response.getBody());
        
        
    }


}