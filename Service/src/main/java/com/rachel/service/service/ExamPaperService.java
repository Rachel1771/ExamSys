package com.rachel.service.service;

import com.github.pagehelper.PageInfo;
import com.rachel.service.domain.ExamPaper;
import com.rachel.service.domain.User;
import com.rachel.service.viewmodel.admin.exam.ExamPaperEditRequestVM;
import com.rachel.service.viewmodel.admin.exam.ExamPaperPageRequestVM;
import com.rachel.service.viewmodel.student.dashboard.PaperFilter;
import com.rachel.service.viewmodel.student.dashboard.PaperInfo;
import com.rachel.service.viewmodel.student.exam.ExamPaperPageVM;

import java.util.List;

public interface ExamPaperService extends BaseService<ExamPaper> {

    PageInfo<ExamPaper> page(ExamPaperPageRequestVM requestVM);

    PageInfo<ExamPaper> taskExamPage(ExamPaperPageRequestVM requestVM);

    PageInfo<ExamPaper> studentPage(ExamPaperPageVM requestVM);

    ExamPaper savePaperFromVM(ExamPaperEditRequestVM examPaperEditRequestVM, User user);

    ExamPaperEditRequestVM examPaperToVM(Integer id);

    List<PaperInfo> indexPaper(PaperFilter paperFilter);

    Integer selectAllCount();

    List<Integer> selectMothCount();
}
