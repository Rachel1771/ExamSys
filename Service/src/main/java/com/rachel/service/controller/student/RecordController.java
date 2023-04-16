package com.rachel.service.controller.student;

import com.rachel.service.base.BaseApiController;
import com.rachel.service.base.RestResponse;
import com.rachel.service.service.AdminService;
import com.rachel.service.service.StudentService;
import com.rachel.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author Rachel
 * @date 2023/4/13 11:24
 * @desciption:
 * @status
 */
@RestController("StudentRecordController")
@RequestMapping(value = "/api/student/record")
public class RecordController extends BaseApiController {

    private StudentService studentService;
    @Autowired
    public RecordController(StudentService studentService){
        this.studentService = studentService;
    }

    @RequestMapping(value = "/dorecord",method = RequestMethod.POST)
    public RestResponse startRecord(@RequestParam int token, @RequestParam int studentId){

        Boolean aBoolean = studentService.doRecord(token, studentId);
        if(aBoolean){
            return RestResponse.ok();
        }
        else {
            return RestResponse.fail(202,"签到码错误");
        }
    }
}
