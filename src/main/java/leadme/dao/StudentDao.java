package leadme.dao;

import java.util.List;
import java.util.Map;
import leadme.domain.Student;

public interface StudentDao {
    int insert(Student student);
    List<Student> findAll(Map<String,Object> params);
    Student findByEmail(String email);
    Student findByNo(int no);
    int delete(int no);
    Student findByEmailPassword(Map<String,Object> params);
}








