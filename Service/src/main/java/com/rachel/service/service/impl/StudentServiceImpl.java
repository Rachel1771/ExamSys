package com.rachel.service.service.impl;

import com.rachel.service.repository.AdminMapper;
import com.rachel.service.repository.StudentMapper;
import com.rachel.service.repository.UserMapper;
import com.rachel.service.service.StudentService;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

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
    public int doRecord(int token, int studentId) {

        int recordId = adminMapper.findRecordId();
        int realtoken = adminMapper.findTokenByRecordId(recordId);
        String effective = adminMapper.findStatues(recordId);
        if(effective.equals("YES")){
            if(token == realtoken){
                LocalDateTime recordTime = LocalDateTime.now();
                studentMapper.upDateRecord(recordTime, studentId,"TRUE", recordId);
                return   1;
            }
            else{
                return   2;
            }
        }
        else {
            return   3;
        }


    }




}
