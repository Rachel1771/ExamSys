package com.rachel.service.service;

import com.github.pagehelper.PageInfo;
import com.rachel.service.domain.UserEventLog;
import com.rachel.service.viewmodel.admin.user.UserEventPageRequestVM;

import java.util.List;

public interface UserEventLogService extends BaseService<UserEventLog> {

    List<UserEventLog> getUserEventLogByUserId(Integer id);

    PageInfo<UserEventLog> page(UserEventPageRequestVM requestVM);

    List<Integer> selectMothCount();
}
