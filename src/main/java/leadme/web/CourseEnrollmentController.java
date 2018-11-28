package leadme.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import leadme.domain.CourseEnrollment;
import leadme.domain.Tour;
import leadme.service.CourseEnrollmentService;
import leadme.service.TourService;

@Controller
@RequestMapping("/enroll")
public class CourseEnrollmentController {

	TourService tourService;
	@Autowired CourseEnrollmentService courseenrollmentService;


	@RequestMapping("page1")
	public String page1(Tour tour){
		
		return "/courseenrollment/enroll";
	}

	@RequestMapping("page1.do")
	@ResponseBody
	public Map<String, Object> page11(@RequestBody Tour tour, HttpSession session) throws Exception {
		System.out.println(tour.getCat_no());
		System.out.println(tour.getTitl());
		System.out.println(tour.getTour_intro());
		
		Map<String,Object> map = new HashMap<String, Object>();
		try {
			courseenrollmentService.checkpage1(tour);
			courseenrollmentService.saveSession(tour, session);
			System.out.println(session.getAttribute("enrollTourStep"));
			map.put("message", "ok");
			return map;
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("fail");
			return null;
		}
	}
	
	
	@RequestMapping("page2")
	public String page2(Tour tour){

		return "/courseenrollment/enroll2";
	}
	
	@RequestMapping("page2.do")
	@ResponseBody
	public Map<String, Object> page21(@RequestBody CourseEnrollment courseenrollment, HttpSession session) {
		System.out.println(courseenrollment.getJoin_tm());
		System.out.println(courseenrollment.getJoin_plc());
		System.out.println(courseenrollment.getLat());
		System.out.println(courseenrollment.getLon());
		System.out.println(courseenrollment.getCr_name());
		System.out.println(courseenrollment.getCr_intro());
		
		Map<String,Object> map = new HashMap<String, Object>();
		try {
			courseenrollmentService.checkpage2(courseenrollment);
			courseenrollmentService.saveSession1(courseenrollment, session);
			System.out.println(session.getAttribute("enrollTourStep"));
			System.out.println(session.getAttribute("enrollTourStep1"));
			map.put("message", "ok");
			return map;
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("fail");
			return null;
		}
	
	}
	
	@RequestMapping("page3")
	public String page3(Tour tour) {
		return "/courseenrollment/enroll3";
	}
	
	@RequestMapping("page3.do")
	@ResponseBody
	public Map<String, Object> page31(@RequestBody Tour tour, HttpSession session) {
		System.out.println(tour.getAmt());
		System.out.println(tour.getReq_inf());
		Map<String,Object> map = new HashMap<String, Object>();
		try {
			courseenrollmentService.checkpage3(tour);
			courseenrollmentService.saveSession(tour, session);
			System.out.println(session.getAttribute("enrollTourStep"));
			System.out.println(session.getAttribute("enrollTourStep1"));
			map.put("message", "ok");
			return map;
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("fail");
			return null;
		}
		
	}
	
}

