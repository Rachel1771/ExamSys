package com.rachel.service.service.impl;

import com.rachel.service.base.RestResponse;
import com.rachel.service.domain.Course;
import com.rachel.service.domain.StudentRecord;
import com.rachel.service.repository.AdminMapper;
import com.rachel.service.repository.StudentMapper;
import com.rachel.service.repository.UserMapper;
import com.rachel.service.service.StudentService;
import okhttp3.Response;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * @author Rachel
 * @date 2023/4/11 9:36
 * @desciption:
 * @status
 */
@Service
public class StudentServiceImpl implements StudentService {


    private final UserMapper userMapper;
    private final AdminMapper adminMapper;
    private final StudentMapper studentMapper;

    public StudentServiceImpl(UserMapper userMapper, AdminMapper adminMapper, StudentMapper studentMapper) {
        this.userMapper = userMapper;
        this.adminMapper = adminMapper;
        this.studentMapper = studentMapper;
    }

    @Override
    public Boolean doRecord(int token, int studentId) {

        int recordId = adminMapper.findRecordId();
        int realtoken = adminMapper.findTokenByRecordId(recordId);
        System.out.println(realtoken);
        if(token == realtoken){
            LocalDateTime recordTime = LocalDateTime.now();
            studentMapper.upDateRecord(recordTime, studentId,"TRUE", recordId);
            return Boolean.TRUE;
        }
        else {
            return Boolean.FALSE;
        }

    }




}
