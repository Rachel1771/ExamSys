package com.rachel.service.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import java.util.Date;

/**
 * @author Rachel
 * @date 2023/4/13 21:47
 * @desciption:
 * @status
 */
public class LiveCourse {

    @ApiModelProperty(value = "课程id")
    @TableField("courid")
    private Integer courseid;

    @ApiModelProperty(value = "对应的老师id")
    @TableField("id")
    private Integer id;

    @ApiModelProperty(value = "课程名称")
    @TableField("coursename")
    private String coursename;

    @ApiModelProperty(value = "直播开始时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField("start_time")
    private Date startTime;

    @ApiModelProperty(value = "直播结束时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField("end_time")
    private Date endTime;


    @ApiModelProperty(value = "课程封面图片路径")
    @TableField("cover")
    private String cover;

    public Integer getCourseid() {
        return courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid = courseid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public LiveCourse(Integer courseid, Integer id, String coursename, Date startTime, Date endTime, String cover) {
        this.courseid = courseid;
        this.id = id;
        this.coursename = coursename;
        this.startTime = startTime;
        this.endTime = endTime;
        this.cover = cover;
    }
}
