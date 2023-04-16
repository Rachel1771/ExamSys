package com.rachel.service.controller.admin;


import com.github.pagehelper.PageInfo;
import com.rachel.service.base.BaseApiController;
import com.rachel.service.base.RestResponse;
import com.rachel.service.domain.Message;
import com.rachel.service.domain.MessageUser;
import com.rachel.service.domain.User;
import com.rachel.service.service.MessageService;
import com.rachel.service.service.UserService;
import com.rachel.service.utility.DateTimeUtil;
import com.rachel.service.utility.PageInfoHelper;
import com.rachel.service.viewmodel.admin.message.MessagePageRequestVM;
import com.rachel.service.viewmodel.admin.message.MessageResponseVM;
import com.rachel.service.viewmodel.admin.message.MessageSendVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@RestController("AdminMessageController")
@RequestMapping(value = "/api/admin/message")
public class MessageController extends BaseApiController {

    private final MessageService messageService;
    private final UserService userService;

    @Autowired
    public MessageController(MessageService messageService, UserService userService) {
        this.messageService = messageService;
        this.userService = userService;
    }

    @RequestMapping(value = "/page", method = RequestMethod.POST)
    public RestResponse<PageInfo<MessageResponseVM>> pageList(@RequestBody MessagePageRequestVM model) {
        PageInfo<Message> pageInfo = messageService.page(model);
        List<Integer> ids = pageInfo.getList().stream().map(d -> d.getId()).collect(Collectors.toList());
        List<MessageUser> messageUsers = ids.size() == 0 ? null : messageService.selectByMessageIds(ids);
        PageInfo<MessageResponseVM> page = PageInfoHelper.copyMap(pageInfo, m -> {
            MessageResponseVM vm = modelMapper.map(m, MessageResponseVM.class);
            String receives = messageUsers.stream().filter(d -> d.getMessageId().equals(m.getId())).map(d -> d.getReceiveUserName())
                    .collect(Collectors.joining(","));
            vm.setReceives(receives);
            vm.setCreateTime(DateTimeUtil.dateFormat(m.getCreateTime()));
            return vm;
        });
        return RestResponse.ok(page);
    }


    @RequestMapping(value = "/send", method = RequestMethod.POST)
    public RestResponse send(@RequestBody @Valid MessageSendVM model) {
        User user = getCurrentUser();
        List<User> receiveUser = userService.selectByIds(model.getReceiveUserIds());
        Date now = new Date();
        Message message = new Message();
        message.setTitle(model.getTitle());
        message.setContent(model.getContent());
        message.setCreateTime(now);
        message.setReadCount(0);
        message.setReceiveUserCount(receiveUser.size());
        message.setSendUserId(user.getId());
        message.setSendUserName(user.getUserName());
        message.setSendRealName(user.getRealName());
        List<MessageUser> messageUsers = receiveUser.stream().map(d -> {
            MessageUser messageUser = new MessageUser();
            messageUser.setCreateTime(now);
            messageUser.setReaded(false);
            messageUser.setReceiveRealName(d.getRealName());
            messageUser.setReceiveUserId(d.getId());
            messageUser.setReceiveUserName(d.getUserName());
            return messageUser;
        }).collect(Collectors.toList());
        messageService.sendMessage(message, messageUsers);
        return RestResponse.ok();
    }

}
