package com.rachel.service.service.impl;

import com.rachel.service.domain.Course;
import com.rachel.service.domain.SignTable;
import com.rachel.service.domain.StudentRecord;
import com.rachel.service.domain.User;
import com.rachel.service.repository.AdminMapper;
import com.rachel.service.repository.UserMapper;
import com.rachel.service.service.AdminService;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * @author Rachel
 * @date 2023/4/11 10:23
 * @desciption:
 * @status
 */
@Service
public class AdminServiceImpl implements AdminService {

    private final UserMapper userMapper;
    private final AdminMapper adminMapper;

    public AdminServiceImpl(UserMapper userMapper, AdminMapper adminMapper) {
        this.userMapper = userMapper;
        this.adminMapper = adminMapper;
    }

    @Override
    public int getToken() {
        Random random = new Random();
        int num = random.nextInt(9000) + 1000;
        return num;
    }

    @Override
    public int creatSign(int courseId, int teacherId) {

        int token = getToken();
        SignTable signRecord = new SignTable();
        signRecord.setCourseId(courseId);
        signRecord.setToken(token);
        signRecord.setTeacherId(teacherId);

        Random random = new Random();
        int recordId = random.nextInt(90000) + 10000;
        LocalDateTime now = LocalDateTime.now();
        signRecord.setPublishTime(now);
        signRecord.setRecordId(recordId);
        signRecord.setEffective("YES");
        adminMapper.insertTable(signRecord);


        List<Course> courses = adminMapper.findBycourseId(courseId);
        for (int i = 0; i < courses.size(); i++) {
            StudentRecord studentRecord = new StudentRecord(recordId,courseId,courses.get(i).getStudentId(),
                    courses.get(i).getStudentName(),null,"FALSE",courses.get(i).getStudentRole());
            adminMapper.insertRecord(studentRecord);
        }

        return token;
    }

    @Override
    public List<StudentRecord> getAllRecord() {
        int recordId = adminMapper.findRecordId();
        List<StudentRecord> records = adminMapper.getAllRecord(recordId);
        System.out.println(records);
       return records;
    }

    @Override
    public int getRecordId() {
        int recordId = adminMapper.findRecordId();
        return recordId;
    }

    @Override
    public int getRealToken(int recordId) {
        int realtoken = adminMapper.findTokenByRecordId(recordId);
        return realtoken;
    }

    @Override
    public void closeRecord() {
        int recordId = adminMapper.findRecordId();
        String effective = "NO";
        adminMapper.changeEffective(effective,recordId);
    }

}
