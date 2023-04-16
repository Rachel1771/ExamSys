package com.rachel.service.controller.admin;

import com.alibaba.fastjson.JSON;
import com.rachel.service.base.BaseApiController;
import com.rachel.service.base.RestResponse;
import com.rachel.service.domain.StudentRecord;
import com.rachel.service.service.AdminService;
import com.rachel.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author Rachel
 * @date 2023/4/11 17:50
 * @desciption:
 * @status
 */

@RestController("AdminRecordController")
@RequestMapping(value = "/api/admin/record")
public class RecordController extends BaseApiController {
    private final AdminService adminService;
    private final UserService userService;

    @Autowired
    public RecordController(AdminService adminService,UserService userService) {
        this.adminService = adminService;
        this.userService = userService;
    }
    @RequestMapping(value = "/createrecord",method = RequestMethod.POST)
    @ResponseBody
    public int createRecord(@RequestParam int courseId,int teacherId){
        return adminService.creatSign(courseId,teacherId);
    }

    @RequestMapping(value = "/getallrecord",method = RequestMethod.POST)
    @ResponseBody
    public List<StudentRecord> getAllRecord(){
        return adminService.getAllRecord();
    }

}
