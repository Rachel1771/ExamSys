package com.rachel.service.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * @author Rachel
 * @date 2023/4/3 22:38
 * @desciption:
 * @status
 */
public class SignTable {

    @ApiModelProperty(value = "签到id")
    @TableField("record_id")
    private Integer recordId;

    @ApiModelProperty(value = "课程id")
    @TableField("course_id")
    private Integer courseId;

    @ApiModelProperty(value = "签到码")
    @TableField("token")
    private Integer token;

    @ApiModelProperty(value = "教师id")
    @TableField("teacher_id")
    private Integer teacherId;

    @ApiModelProperty(value = "发布时间")
    @TableField("publish_time")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private LocalDateTime publishTime;

    @ApiModelProperty(value = "是否有效")
    @TableField("effective")
    private String effective;

    public String getEffective() {
        return effective;
    }

    public void setEffective(String effective) {
        this.effective = effective;
    }

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

    public Integer getToken() {
        return token;
    }

    public void setToken(Integer token) {
        this.token = token;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public LocalDateTime getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(LocalDateTime publishTime) {
        this.publishTime = publishTime;
    }

    public SignTable(Integer recordId, Integer courseId, Integer token, Integer teacherId, LocalDateTime publishTime, String effective) {
        this.recordId = recordId;
        this.courseId = courseId;
        this.token = token;
        this.teacherId = teacherId;
        this.publishTime = publishTime;
        this.effective = effective;
    }

    public SignTable() {
    }
}
