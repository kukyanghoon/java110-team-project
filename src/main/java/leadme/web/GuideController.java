package leadme.web;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import leadme.domain.Guide;
import leadme.service.GuideService;

@Controller
@RequestMapping("/guide")
public class GuideController {

  @Autowired GuideService guideService;

  @RequestMapping(value="profile/{gmno}")
  public String login(@PathVariable String gmno, Model model) {

    System.out.println(gmno);
    model.addAttribute("gmno", gmno);

    return "/guide/profile";
  }


  @RequestMapping(value="guideProfile.do", method=RequestMethod.POST)
  @ResponseBody
  public Map<String ,Object> guideProfile(@RequestBody Guide guide) {

    Map<String ,Object> data = new HashMap<String, Object>();

    try {

      data.put("member", guideService.guideFindByGno(guide));
      return data;

    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }

  }

}
