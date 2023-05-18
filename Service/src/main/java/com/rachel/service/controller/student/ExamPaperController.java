package com.rachel.service.controller.student;

import com.github.pagehelper.PageInfo;
import com.rachel.service.base.BaseApiController;
import com.rachel.service.base.RestResponse;
import com.rachel.service.domain.ExamPaper;
import com.rachel.service.service.ExamPaperAnswerService;
import com.rachel.service.service.ExamPaperService;
import com.rachel.service.utility.DateTimeUtil;
import com.rachel.service.utility.PageInfoHelper;
import com.rachel.service.viewmodel.admin.exam.ExamPaperEditRequestVM;
import com.rachel.service.viewmodel.student.exam.ExamPaperPageResponseVM;
import com.rachel.service.viewmodel.student.exam.ExamPaperPageVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController("StudentExamPaperController")
@RequestMapping(value = "/api/student/exam/paper")
public class ExamPaperController extends BaseApiController {

    private final ExamPaperService examPaperService;
    private final ExamPaperAnswerService examPaperAnswerService;
    private final ApplicationEventPublisher eventPublisher;

    @Autowired
    public ExamPaperController(ExamPaperService examPaperService, 
        ExamPaperAnswerService examPaperAnswerService, ApplicationEventPublisher eventPublisher) {

        this.examPaperService = examPaperService;
        this.examPaperAnswerService = examPaperAnswerService;
        this.eventPublisher = eventPublisher;
    }


    @RequestMapping(value = "/select/{id}", method = RequestMethod.POST)
    public RestResponse<ExamPaperEditRequestVM> select(@PathVariable Integer id) {
        ExamPaperEditRequestVM vm = examPaperService.examPaperToVM(id);
        return RestResponse.ok(vm);
    }


    @RequestMapping(value = "/pageList", method = RequestMethod.POST)
    public RestResponse<PageInfo<ExamPaperPageResponseVM>> pageList(@RequestBody @Valid ExamPaperPageVM model) {
        PageInfo<ExamPaper> pageInfo = examPaperService.studentPage(model);
        PageInfo<ExamPaperPageResponseVM> page = PageInfoHelper.copyMap(pageInfo, e -> {
            ExamPaperPageResponseVM vm = modelMapper.map(e, ExamPaperPageResponseVM.class);
            vm.setCreateTime(DateTimeUtil.dateFormat(e.getCreateTime()));
            return vm;
        });
        return RestResponse.ok(page);
    }
}
