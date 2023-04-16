package com.rachel.service.repository;

import com.rachel.service.domain.MessageUser;
import com.rachel.service.viewmodel.student.user.MessageRequestVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MessageUserMapper extends BaseMapper<MessageUser> {

    List<MessageUser> selectByMessageIds(List<Integer> ids);

    int inserts(List<MessageUser> list);

    List<MessageUser> studentPage(MessageRequestVM requestVM);

    Integer unReadCount(Integer userId);
}
