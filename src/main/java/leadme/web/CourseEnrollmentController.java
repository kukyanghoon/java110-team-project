package leadme.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import leadme.domain.CourseEnrollment;
import leadme.domain.Member;
import leadme.domain.Tour;
import leadme.service.CourseEnrollmentService;
import leadme.service.TourService;

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
		System.out.println(tour.getLoc());
		System.out.println(tour.getJoin_phot());
		session.getAttribute("memberInfo");
		System.out.println(session.getAttribute("memberInfo"));


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
	public Map<String, Object> page21(@RequestBody Tour tour, HttpSession session) {
		System.out.println("여기는 page2.do 입니다!!!");
		System.out.println(tour.getJoin_tm());
		System.out.println(tour.getJoin_plc());
		System.out.println(tour.getLat());
		System.out.println(tour.getLon());

		Map<String,Object> map = new HashMap<String, Object>();
		try {
			//courseenrollmentService.checkpage2(tour);

			Member m = (Member) session.getAttribute("memberInfo");
			System.out.println(m.getNo());

			Tour page1tour = (Tour)session.getAttribute("enrollTourStep");
			page1tour.setJoin_plc(tour.getJoin_plc());
			page1tour.setJoin_tm(tour.getJoin_tm());
			page1tour.setLat(tour.getLat());
			page1tour.setLon(tour.getLon());
			page1tour.setMno(m.getNo());
			page1tour.setAlbm_link(tour.getAlbm_link());

			System.out.println("앨범링크 : " + tour.getAlbm_link());
			System.out.println("합친 tour : " + page1tour);

			session.setAttribute("enrollTourStep", page1tour);

			Tour newtour = (Tour)session.getAttribute("enrollTourStep");
			System.out.println("새로운 세션 : " + newtour);

			//courseenrollmentService.saveSession1(tour, session);
			System.out.println("apsdfjdsaipfjdasifj : "+session.getAttribute("enrollTourStep"));
			System.out.println(session.getAttribute("courseList"));



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


	@Transactional
	@RequestMapping("page3.do")
	@ResponseBody
	public Map<String, Object> page31(@RequestBody Tour tour, HttpSession session) {
		System.out.println(tour.getMx_pn());
		System.out.println(tour.getAmt());
		System.out.println(tour.getTour_dt());
		System.out.println(tour.getReq_inf());

		/*Tour t =  (Tour)session.getAttribute("enrollTourStep");
		@SuppressWarnings("unchecked")
		List<CourseEnrollment> list = (List<CourseEnrollment>) session.getAttribute("courseList");		
		 */
		
		System.out.println();
		System.out.println("마지막 페이지");

		Tour newtour = (Tour)session.getAttribute("enrollTourStep");
		@SuppressWarnings("unchecked")
		List<CourseEnrollment> course = (List<CourseEnrollment>)session.getAttribute("courseList");

		for (CourseEnrollment c : course) {
			System.out.println(c);
		}

		newtour.setAmt(tour.getAmt());
		newtour.setMx_pn(tour.getMx_pn());
		newtour.setReq_inf(tour.getReq_inf());

		Map<String, Object> message = new HashMap<>();
		
		
		System.out.println("서비스 시작한다!");
		try {
			courseenrollmentService.courseenrolltour(newtour, course);
			courseenrollmentService.courseenrolltourdetail(course);
			message.put("message", "성공");
			return message;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		//System.out.println("서비스 끝@!");

		/*Map<String,Object> map = new HashMap<String, Object>();
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
		}*/
		
	}

	@RequestMapping("upload.do")
	@ResponseBody
	public ArrayList<String> fileUpload(MultipartHttpServletRequest multi, HttpSession session) 
			throws IllegalStateException, IOException {

		this.session=session;

		// 저장 경로 설정
		String root = multi.getSession().getServletContext().getRealPath("/");
		String path = root+"resources/img/";

		String newFileName = ""; // 업로드 되는 파일명

		ArrayList<String> arr = new ArrayList<>();

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

			arr.add(newFileName);
			mFile.transferTo(new File(path+newFileName));

		}
		return arr;
	}


	/*@SuppressWarnings("unchecked")
	@RequestMapping(value = "ajaxJsonTest.do", method = { RequestMethod.POST })
	@ResponseBody
	public void ajaxJsonTest(HttpServletRequest request, @RequestBody String paramData) {
	    JSONArray jsonArray = JSONArray.fromObject(paramData);

		System.out.println(paramData);

	    List<Map<String,Object>> resultMap = new ArrayList<Map<String,Object>>();
	    resultMap = JSONArray.fromObject(paramData);

	    for (Map<String, Object> map : resultMap) {
	        System.out.println(map.get("cr_name") + " , " + map.get("cr_intro") + " , " + map.get("cr_phot"));
	        //관리자 : 1111
	        //직원 : 2222
	    }
	}
	 */

	@RequestMapping(value = "ajaxJsonTest.do", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> test(@RequestBody String a, HttpSession session){

		System.out.println("aaaaaaaaaa");
		System.out.println(a);


		JsonParser jsonParser = new JsonParser();
		JsonArray jsonArray = (JsonArray) jsonParser.parse(a);

		List<String> courseList = new ArrayList<>();

		List<CourseEnrollment> list= new ArrayList<>();

		for (int i = 0; i < jsonArray.size(); i++) {
			CourseEnrollment course =new CourseEnrollment(); 
			JsonObject object = (JsonObject) jsonArray.get(i);
			course.setCr_name(object.get("cr_name").getAsString());
			String cr_name = object.get("cr_name").getAsString();

			course.setCr_intro(object.get("cr_intro").getAsString());
			String cr_intro = object.get("cr_intro").getAsString();

			course.setCr_phot(object.get("cr_phot").getAsString());
			String cr_phot = object.get("cr_phot").getAsString();

			System.out.printf("%s\n", cr_name);
			System.out.printf("%s\n", cr_intro);
			System.out.printf("%s\n", cr_phot);

			list.add(course);
		}

		for (CourseEnrollment c : list) {
			System.out.println(c);
		}

		session.setAttribute("courseList", list);
		List<CourseEnrollment> aaaaa = (List<CourseEnrollment>) session.getAttribute("courseList");


		System.out.println("aaaaaaaa");
		for (CourseEnrollment c : aaaaa) {
			System.out.println(c);
		}



		Map<String, Object> message = new HashMap<>();
		message.put("message", "aaaaa");

		return message;
	}

}

