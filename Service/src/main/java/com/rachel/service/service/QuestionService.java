package com.rachel.service.service;

import com.github.pagehelper.PageInfo;
import com.rachel.service.domain.Question;
import com.rachel.service.viewmodel.admin.question.QuestionEditRequestVM;
import com.rachel.service.viewmodel.admin.question.QuestionPageRequestVM;

import java.util.List;

public interface QuestionService extends BaseService<Question> {

    PageInfo<Question> page(QuestionPageRequestVM requestVM);

    Question insertFullQuestion(QuestionEditRequestVM model, Integer userId);

    Question updateFullQuestion(QuestionEditRequestVM model);

    QuestionEditRequestVM getQuestionEditRequestVM(Integer questionId);

    QuestionEditRequestVM getQuestionEditRequestVM(Question question);

    Integer selectAllCount();

    List<Integer> selectMothCount();
}
