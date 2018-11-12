package leadme.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import leadme.dao.MemberDao;
import leadme.dao.PhotoDao;
import leadme.dao.TeacherDao;
import leadme.domain.Teacher;
import leadme.service.TeacherService;

//@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired MemberDao memberDao;
    @Autowired TeacherDao teacherDao;
    @Autowired PhotoDao photoDao;

    @Transactional
    @Override
    public void add(Teacher teacher) {

        memberDao.insert(teacher);
        teacherDao.insert(teacher);

        if (teacher.getPhoto() != null) {

            HashMap<String,Object> params = new HashMap<>();
            params.put("no", teacher.getNo());
            params.put("photo", teacher.getPhoto());

            photoDao.insert(params);
        }
    }

    @Override
    public List<Teacher> list(int pageNo, int pageSize) {

        HashMap<String,Object> params = new HashMap<>();
        params.put("rowNo", (pageNo - 1) * pageSize);
        params.put("size", pageSize);

        return teacherDao.findAll(params);
    }

    @Override
    public Teacher get(int no) {
        return teacherDao.findByNo(no);
    }

    @Transactional
    @Override
    public void delete(int no) {

        if (teacherDao.delete(no) == 0) {
            throw new RuntimeException("해당 번호의 데이터가 없습니다.");
        }
        photoDao.delete(no);
        memberDao.delete(no);
    }
}


