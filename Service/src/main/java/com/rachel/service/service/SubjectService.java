package com.rachel.service.service;

import com.github.pagehelper.PageInfo;
import com.rachel.service.domain.Subject;
import com.rachel.service.viewmodel.admin.education.SubjectPageRequestVM;

import java.util.List;

public interface SubjectService extends BaseService<Subject> {

    List<Subject> getSubjectByLevel(Integer level);

    List<Subject> allSubject();

    Integer levelBySubjectId(Integer id);

    PageInfo<Subject> page(SubjectPageRequestVM requestVM);
}
