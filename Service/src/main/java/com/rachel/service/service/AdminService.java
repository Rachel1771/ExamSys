package com.rachel.service.service;

import com.rachel.service.domain.SignTable;
import com.rachel.service.domain.StudentRecord;

import java.util.List;
import java.util.Map;

/**
 * @author Rachel
 * @date 2023/4/11 9:19
 * @desciption:
 * @status
 */
public interface AdminService {

//    void sign(int userid,int token);
//
//

//
//    List<String> getAttendence();
//
//
//    List<String> getAbensence();
//
//    List<StudentRecord> getAllData();
//
//    void publish()

    int getToken();

    int creatSign(int courseId,int teacherId);

    List<StudentRecord> getAllRecord();

    int getRecordId();

    int getRealToken(int recordId);

}
