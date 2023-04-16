package com.rachel.service.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author Rachel
 * @date 2023/4/14 10:02
 * @desciption:
 * @status
 */
public class Course {


    @ApiModelProperty(value = "课程id")
    @TableField("course_id")
    private Integer courseId;

    @ApiModelProperty(value = "课程名")
    @TableField("course_name")
    private String courseName;

    @ApiModelProperty(value = "老师id")
    @TableField("teacher_id")
    private Integer teacherId;

    @ApiModelProperty(value = "老师名字")
    @TableField("teacher_name")
    private String teacherName;

    @ApiModelProperty(value = "学生id")
    @TableField("student_id")
    private Integer  studentId;

    @ApiModelProperty(value = "学生的角色")
    @TableField("student_role")
    private Integer studentRole;

    @ApiModelProperty(value = "学生姓名")
    @TableField("student_name")
    private String  studentName;

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getStudentRole() {
        return studentRole;
    }

    public void setStudentRole(Integer studentRole) {
        this.studentRole = studentRole;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public Course(Integer courseId, String courseName, Integer teacherId, String teacherName, Integer studentId, Integer studentRole, String studentName) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.teacherId = teacherId;
        this.teacherName = teacherName;
        this.studentId = studentId;
        this.studentRole = studentRole;
        this.studentName = studentName;
    }

    public Course() {
    }

    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", courseName='" + courseName + '\'' +
                ", teacherId=" + teacherId +
                ", teacherName='" + teacherName + '\'' +
                ", studentId=" + studentId +
                ", studentRole=" + studentRole +
                ", studentName='" + studentName + '\'' +
                '}';
    }
}
