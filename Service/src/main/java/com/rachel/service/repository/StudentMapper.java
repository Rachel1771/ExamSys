package com.rachel.service.repository;

import com.rachel.service.domain.StudentRecord;
import com.rachel.service.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.Mapping;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * @author Rachel
 * @date 2023/4/11 9:45
 * @desciption:
 * @status
 */
@Mapper
public interface StudentMapper {
//    void insertrecord(StudentRecord record);
//
//    List<User> selectAllByRoleUsers(Integer role);
//
//    void marksign(String statues,String uptime,Integer userid);
//
//    void clean();

    String selectNameByRoleAndId(Integer userid,Integer role);


    void upDateRecord(LocalDateTime recordTime, int studentId, String statues,int recordId);
}
