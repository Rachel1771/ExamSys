package com.rachel.service.repository;

import com.rachel.service.domain.Course;
import com.rachel.service.domain.SignTable;
import com.rachel.service.domain.StudentRecord;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * @author Rachel
 * @date 2023/4/11 10:16
 * @desciption:
 * @status
 */
@Mapper
public interface AdminMapper {

    //插入记录表
    void insertTable(SignTable table);

//    List<SignTable> findAlldata(String datatime);
//
//    String findByToken(int token);
//
//    Integer GetTokenById(Integer userid);
//
//    List<String> selectAllByStatuesStrings(String statues);
//
//    List<StudentRecord> getAllData();

    List<Course> findBycourseId(int courseId);

    int findRecordId();

    void insertRecord(StudentRecord studentRecord);


    int findCourseId();

    int findTokenByRecordId(int recordId);

//    List<String> getAllRecord(int recordId);
    List<StudentRecord> getAllRecord(int recordId);

    void changeEffective(String effective,int recordId);

    String findStatues(int recordId);
}
