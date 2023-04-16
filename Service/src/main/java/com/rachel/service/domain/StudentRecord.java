package com.rachel.service.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * @author Rachel
 * @date 2023/4/10 22:24
 * @desciption:
 * @status
 */
public class StudentRecord {

    @ApiModelProperty(value = "签到id")
    @TableField("record_id")
    private Integer recordId;

    @ApiModelProperty(value = "课程id")
    @TableField("course_id")
    private Integer courseId;

    @ApiModelProperty(value = "学生id")
    @TableField("student_id")
    private Integer studentId;

    @ApiModelProperty(value = "学生名字")
    @TableField("student_name")
    private String studentName;

    @ApiModelProperty(value = "签到时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField("record_time")
    private LocalDateTime recordTime;


    @ApiModelProperty(value = "签到状态")
    @TableField("statues")
    private String statues;

    @ApiModelProperty(value = "学生角色")
    @TableField("role")
    private Integer role;

    public Integer getRecordId() {
        return recordId;
    }

    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public LocalDateTime getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(LocalDateTime recordTime) {
        this.recordTime = recordTime;
    }

    public String getStatues() {
        return statues;
    }

    public void setStatues(String statues) {
        this.statues = statues;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public StudentRecord(Integer recordId, Integer courseId, Integer studentId, String studentName, LocalDateTime recordTime, String statues, Integer role) {
        this.recordId = recordId;
        this.courseId = courseId;
        this.studentId = studentId;
        this.studentName = studentName;
        this.recordTime = recordTime;
        this.statues = statues;
        this.role = role;
    }

    public StudentRecord() {
    }

    @Override
    public String toString() {
        return "StudentRecord{" +
                "recordId=" + recordId +
                ", courseId=" + courseId +
                ", studentId=" + studentId +
                ", studentName='" + studentName + '\'' +
                ", recordTime=" + recordTime +
                ", statues=" + statues +
                ", role=" + role +
                '}';
    }
}
