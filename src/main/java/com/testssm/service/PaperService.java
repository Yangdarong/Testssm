package com.testssm.service;

import com.testssm.pojo.Paper;

import java.util.List;

public interface PaperService {

    // 添加论文
    /*public abstract */int addPaper(Paper paper);

    int deletePaperById(long id);

    int updatePaper(Paper paper);

    Paper queryById(long id);

    List<Paper> queryAllPaper();
}
