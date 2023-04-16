package com.rachel.service.service;

import com.rachel.service.base.RestResponse;
import com.rachel.service.domain.User;

import okhttp3.Response;
import java.util.List;

/**
 * @author Rachel
 * @date 2023/4/11 9:17
 * @desciption:
 * @status
 */
public interface StudentService {

//    void record(int token,int userid);

    Boolean doRecord(int token, int studentId);

}
