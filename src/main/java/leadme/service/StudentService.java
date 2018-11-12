package leadme.service;

import java.util.List;
import leadme.domain.Student;

public interface StudentService {
    void add(Student student);
    List<Student> list(int pageNo, int pageSize);
    Student get(int no);
    void delete(int no);
}
