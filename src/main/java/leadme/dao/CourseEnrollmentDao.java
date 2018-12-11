package leadme.dao;

import leadme.domain.CourseEnrollment;
import leadme.domain.Tour;

public interface CourseEnrollmentDao {
	
	int courseerolltour(Tour tour);
	int coursedetail(CourseEnrollment courseEnrollment);
	int coursephotodetail(CourseEnrollment courseEnrollment);
}
