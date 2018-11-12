package leadme.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leadme.dao.MemberDao;
import leadme.dao.PhotoDao;
import leadme.dao.StudentDao;
import leadme.domain.Student;
import leadme.service.StudentService;

//@Service
public class StudentServiceImpl implements StudentService {

    @Autowired MemberDao memberDao;
    @Autowired StudentDao studentDao;
    @Autowired PhotoDao photoDao;

    @Transactional
    @Override
    public void add(Student student) {

        memberDao.insert(student);
        studentDao.insert(student);

        if (student.getPhoto() != null) {

            HashMap<String,Object> params = new HashMap<>();
            params.put("no", student.getNo());
            params.put("photo", student.getPhoto());

            photoDao.insert(params);
        }
    }

    @Override
    public List<Student> list(int pageNo, int pageSize) {

        HashMap<String,Object> params = new HashMap<>();
        params.put("rowNo", (pageNo - 1) * pageSize);
        params.put("size", pageSize);

        return studentDao.findAll(params);
    }

    @Override
    public Student get(int no) {

        return studentDao.findByNo(no);
    }

    @Transactional
    @Override
    public void delete(int no) {

        if (studentDao.delete(no) == 0) {
            throw new RuntimeException("해당 번호의 데이터가 없습니다.");
        }
        photoDao.delete(no);
        memberDao.delete(no);

    }
}










