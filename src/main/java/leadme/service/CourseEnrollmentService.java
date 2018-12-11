package leadme.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import leadme.domain.CourseEnrollment;
import leadme.domain.Tour;

public interface CourseEnrollmentService {
	void checkpage1(Tour tour) throws Exception;
	void checkpage2(Tour tour) throws Exception;
	void checkpage3(Tour tour) throws Exception;
	void saveSession(Tour tour, HttpSession session);
	void saveSession1(CourseEnrollment courseenrollment, HttpSession session);
	void saveSession2(Tour tour, HttpSession session);
	void checkphot(Tour tour) throws Exception;
	void courseenrolltour(Tour tour,List<CourseEnrollment> courseList);
	void courseenrolltourdetail(List<CourseEnrollment> courseList) throws Exception;
	
}
