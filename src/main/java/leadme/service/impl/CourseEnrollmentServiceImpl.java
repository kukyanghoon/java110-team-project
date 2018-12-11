package leadme.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leadme.dao.CourseEnrollmentDao;
import leadme.dao.TourDao;
import leadme.domain.CourseEnrollment;
import leadme.domain.Tour;
import leadme.service.CourseEnrollmentService;

@Service
public class CourseEnrollmentServiceImpl implements CourseEnrollmentService{
	@Autowired TourDao tourDao;
	@Autowired CourseEnrollmentDao courseEnrollmentdao;
	
	
	@Override
	public void checkpage1(Tour tour) throws Exception{
		if(tour.getTitl() == null) {
			throw new Exception("titl");
		}
		if(tour.getTour_intro() == null) {
			throw new Exception("intro");
		}
		if(tour.getCat_no()==0 ) {
			throw new Exception("cat_no");
		}
	}
	
	@Override
	public void checkphot(Tour tour) throws Exception{
		if(tour.getPri_phot()==null) {
			throw new Exception("pri_phot");
		}
	}
	
	@Override
	public void saveSession(Tour tour, HttpSession session) {
		
		session.setAttribute("enrollTourStep", tour);
		System.out.println(session.getAttribute("enrollTourStep"));
	}
	
	
	@Override
	public void checkpage2(Tour tour) throws Exception {
		if(tour.getLon()==0 ) {
			throw new Exception("lon");
		}
		if(tour.getLat()==0 ) {
			throw new Exception("lat");
		}
		if(tour.getJoin_plc()==null ) {
			throw new Exception("joing_plc");
		}
		if(tour.getJoin_tm()==null ) {
			throw new Exception("join_tm");
		}
	}
	


	@Override
	public void saveSession1(CourseEnrollment courseenrollment, HttpSession session) {
		session.setAttribute("enrollTourStep1", courseenrollment);
		System.out.println(session.getAttribute("enrollTourStep1"));
		
	}
	
	@Override
	public void checkpage3(Tour tour) throws Exception {
		if(tour.getAmt()==0) {
			throw new Exception("amt");
		}
		if(tour.getReq_inf()==null) {
			throw new Exception("req_inf");
		}
	}
	
	@Override
	public void saveSession2(Tour tour, HttpSession session) {
		session.setAttribute("enrollTourStep", tour);
		System.out.println(session.getAttribute("enrollTourStep"));
		
	}

	@Override
	public void courseenrolltour(Tour tour,List<CourseEnrollment> courseList) {
		
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	    Date nowDate = new Date();
		String reg_dt = format.format(nowDate);
		String mod_dt = format.format(nowDate);
		tour.setDel_yn("Y");
		tour.setReg_dt(reg_dt);
		
		
		
		int num = courseEnrollmentdao.courseerolltour(tour);
		System.out.println("넣은 갯수 : " + num);
		System.out.println("현재 tour 넘버 : " + tour.getTno());
		int index = 1;
		for (CourseEnrollment c : courseList) {
			c.setTno(tour.getTno());
			c.setCr_idx(index++);
		}
		
	}
	
    @Transactional
	@Override
	public void courseenrolltourdetail(List<CourseEnrollment> courseList) throws Exception{
		/*int abc = courseEnrollmentdao.coursedetail(courseEnrollment);
		System.out.println("넣은 갯수 : " + abc);
		System.out.println("현재 코스 번호 : "+ courseEnrollment.getCr_no());*/
		
		System.out.println("courseenrolltourdetail()");
		for (CourseEnrollment c : courseList) {
			System.out.println(c);
			
			courseEnrollmentdao.coursedetail(c);
			System.out.println("바뀐 course : " + c);
			System.out.println("한번더 cr_no : " + c.getCr_no());
			
			courseEnrollmentdao.coursephotodetail(c);
			// 그 값으로 사진 디비 저장 하고

		}
		
		
		
	}
	
	
	
	
	
}
