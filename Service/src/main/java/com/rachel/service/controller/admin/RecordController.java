package com.rachel.service.controller.admin;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.rachel.service.base.BaseApiController;
import com.rachel.service.base.RestResponse;
import com.rachel.service.domain.StudentRecord;
import com.rachel.service.service.AdminService;
import com.rachel.service.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.HashMap;
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
    public int createRecord(@RequestBody Map<String, Object> data){
        int courseId = (int) data.get("courseId");
        int teacherId = (int) data.get("teacherId");
        return adminService.creatSign(courseId,teacherId);
    }

    @RequestMapping(value = "/getallrecord",method = RequestMethod.POST)
    @ResponseBody
    public String getAllRecord(@RequestBody(required = false) Map<String, Object> data) {
        boolean flag = true;
        if(data != null && data.containsKey("flag")){
            Object flagValue = data.get("flag");
            if(flagValue instanceof Boolean){
                flag = (Boolean) flagValue;
            }
        }
        List<StudentRecord> records = adminService.getAllRecord();
        Map<String, Object> map = new HashMap<>();
        map.put("code", flag);
        map.put("list", records);
        return new Gson().toJson(map);
    }
}
