package com.rachel.service.service;

import com.github.pagehelper.PageInfo;
import com.rachel.service.domain.TaskExam;
import com.rachel.service.domain.User;
import com.rachel.service.viewmodel.admin.task.TaskPageRequestVM;
import com.rachel.service.viewmodel.admin.task.TaskRequestVM;

import java.util.List;

public interface TaskExamService extends BaseService<TaskExam> {

    PageInfo<TaskExam> page(TaskPageRequestVM requestVM);

    void edit(TaskRequestVM model, User user);

    TaskRequestVM taskExamToVM(Integer id);

    List<TaskExam> getByGradeLevel(Integer gradeLevel);
}
