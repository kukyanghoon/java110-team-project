package leadme.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import leadme.domain.CourseEnrollment;
import leadme.domain.Tour;
import leadme.service.CourseEnrollmentService;
import leadme.service.TourService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/enroll")
public class CourseEnrollmentController {

	TourService tourService;
	@Autowired CourseEnrollmentService courseenrollmentService;
	private HttpSession session;


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
		System.out.println(tour.getPri_phot());

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
		System.out.println(courseenrollment.getCr_phot());

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

	@RequestMapping("upload.do")
	@ResponseBody
	public String fileUpload(MultipartHttpServletRequest multi, HttpSession session) 
			throws IllegalStateException, IOException {
		
		this.session=session;
		
		// 저장 경로 설정
		String root = multi.getSession().getServletContext().getRealPath("/");
		String path = root+"resources/img/";

		String newFileName = ""; // 업로드 되는 파일명

		File dir = new File(path);
		
		if(!dir.isDirectory()){
			dir.mkdir();
		}

		Iterator<String> files = multi.getFileNames();
		while(files.hasNext()){
			String uploadFile = files.next();

			MultipartFile mFile = multi.getFile(uploadFile);
			String fileName = mFile.getOriginalFilename();
			System.out.println("실제 파일 이름 : " +fileName);
			if(fileName ==null) {
				System.out.println("망함");
			}
			newFileName = System.currentTimeMillis()+"."
					+fileName.substring(fileName.lastIndexOf(".")+1);
			System.out.println(newFileName);
			
			if(fileName.substring(fileName.lastIndexOf(".")+1).equals("png")) {
				newFileName = (UUID.randomUUID().toString()+".png");
			}
			if(fileName.substring(fileName.lastIndexOf(".")+1).equals("jpg")) {
				newFileName = (UUID.randomUUID().toString()+".jpg");
			}
			if(fileName.substring(fileName.lastIndexOf(".")+1).equals("jpeg")) {
				newFileName = (UUID.randomUUID().toString()+".jpeg");
			}

			
			mFile.transferTo(new File(path+newFileName));
			
		}
		return newFileName;
	}

	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "ajaxJsonTest.do", method = { RequestMethod.POST })
	@ResponseBody
	public void ajaxJsonTest(HttpServletRequest request, @RequestBody String paramData) {
	    /*JSONArray jsonArray = JSONArray.fromObject(paramData);*/
	 
	    List<Map<String,Object>> resultMap = new ArrayList<Map<String,Object>>();
	    resultMap = JSONArray.fromObject(paramData);
	         
	    for (Map<String, Object> map : resultMap) {
	        System.out.println(map.get("cr_name") + " , " + map.get("cr_intro") + " , " + map.get("cr_phot"));
	        //관리자 : 1111
	        //직원 : 2222
	    }
	}
	  
}

