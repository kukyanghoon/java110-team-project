package leadme.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import leadme.dao.TourDao;
import leadme.domain.CourseEnrollment;
import leadme.domain.Tour;
import leadme.service.CourseEnrollmentService;

@Service
public class CourseEnrollmentServiceImpl implements CourseEnrollmentService{
	@Autowired TourDao tourDao;
	
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
	public void checkpage2(CourseEnrollment courseenrollment) throws Exception {
		if(courseenrollment.getCr_intro() == null) {
			throw new Exception("intro");
		}
		if(courseenrollment.getCr_name() == null) {
			throw new Exception("name");
		}
		if(courseenrollment.getLon()==0 ) {
			throw new Exception("lon");
		}
		if(courseenrollment.getLat()==0 ) {
			throw new Exception("lat");
		}
		if(courseenrollment.getJoin_plc()==null ) {
			throw new Exception("joing_plc");
		}
		if(courseenrollment.getJoin_tm()==null ) {
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
	
	
	
}
