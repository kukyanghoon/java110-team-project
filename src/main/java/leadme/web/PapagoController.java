package leadme.web;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.service.PapagoService;

@Controller
@RequestMapping("/translate")
public class PapagoController{


    @Autowired PapagoService papagoService; 

    @RequestMapping(value="translate.do", method=RequestMethod.POST)
    @ResponseBody
    public Map<String ,Object> translate(@RequestBody String word) {


        Map<String ,Object> message = new HashMap<String, Object>();
        try {
            Map<String ,Object> detectLangs = papagoService.detectLangs(word);
            message.put("message", papagoService.TranslateService(
                    (String)detectLangs.get("source"), 
                    (String)detectLangs.get("target"), 
                    word));
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
        return message;

    }



}
