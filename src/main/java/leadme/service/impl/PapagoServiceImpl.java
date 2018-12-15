package leadme.service.impl;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import org.springframework.stereotype.Service;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import leadme.service.PapagoService;

@Service
public class PapagoServiceImpl implements PapagoService {
  static final String  CLIENTID = "u6tTirGvEhNSa8kmUsy_";//애플리케이션 클라이언트 아이디값";
  static final String CLIENTSECRET = "pZRsVVEFG1";//애플리케이션 클라이언트 시크릿값";
  static final String URL = "https://openapi.naver.com/v1/language/translate";
  
  @Override
  public String TranslateService(String source, String target, String word) throws Exception{
    System.out.println("word " + word);
    String translateWord = jsonDataParse(word,"word");
    System.out.println(translateWord);
    
    try {
        String text = URLEncoder.encode(translateWord, "UTF-8");
        URL url = new URL(URL);
        HttpURLConnection con = (HttpURLConnection)url.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("X-Naver-Client-Id", CLIENTID);
        con.setRequestProperty("X-Naver-Client-Secret", CLIENTSECRET);
        // post request
        String postParams = "source=" + source + "&target=" + target + "&text=" + text;
        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.writeBytes(postParams);
        wr.flush();
        wr.close();
        int responseCode = con.getResponseCode();
        BufferedReader br;
        if(responseCode==200) { // 정상 호출
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
        } else {  // 에러 발생
            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
        }
        String inputLine;
        StringBuffer response = new StringBuffer();
        while ((inputLine = br.readLine()) != null) {
            response.append(inputLine);
        }
        br.close();
        System.out.println(response.toString());
        
        String data = response.toString();
        
        System.out.println("translate ====> " + data);
        // 분명히 파싱 했었는데......
        String message = translate(data,"message");
        System.out.println();
        System.out.println("message ====>" + message);
        String result = translate(message,"result");
        System.out.println();
        System.out.println("result ====>" + result);
        String translatedText = translate(result,"translatedText");
        System.out.println("TranslateService : " + translatedText);
        
        return translatedText;
        
    } catch (Exception e) {
        System.out.println(e);
        throw new Exception("번역 불가!");
    }
}
    
  private String translate(String data,String parserString) throws JsonParseException, JsonMappingException, IOException{
    
    JsonParser parser = new JsonParser();
    Object element = parser.parse(data);
    JsonObject jsonElement = (JsonObject)element;
    String returnData = jsonElement.get(parserString).toString();
    System.out.println("returnData : " + returnData);
 /*
    Gson gson = new Gson();
    Map<String, Object> map = new HashMap<>();
    map = (Map<String, Object>)gson.fromJson(data, map.getClass());
    
    System.out.println(map.get(parserString));
    
    String returnData = String.valueOf(map.get(parserString));
    */
    
    /*ObjectMapper mapper = new ObjectMapper();
    Map<String, Object> map = new HashMap<String, Object>(); 
    
    map = mapper.readValue(data, new TypeReference<Map<String, String>>(){});*/
    
    return returnData;
    
  }
    
  private String jsonDataParse(String data,String parserString) throws JsonParseException, JsonMappingException, IOException{
    
    JsonParser parser = new JsonParser();
    JsonElement element = parser.parse(data);
    String returnData = element.getAsJsonObject().get(parserString).getAsString();
    
    return returnData;
    
  }



}