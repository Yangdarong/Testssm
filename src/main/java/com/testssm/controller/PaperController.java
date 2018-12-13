package com.testssm.controller;

import com.testssm.pojo.Paper;
import com.testssm.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/paper")
public class PaperController {
    @Autowired
    private PaperService paperService;

    @RequestMapping("/allPaper")
    public String list(Model model) {
        List<Paper> list = paperService.queryAllPaper();
        model.addAttribute("list", list);
        return "paper/allPaper";
    }

    @RequestMapping("toAddPaper")
    public String toAddPaper() {
        return "paper/addPaper";
    }

    @RequestMapping("/addPaper")
    public String addPaper(Paper paper) {
        paperService.addPaper(paper);
        return "redirect:/paper/allPaper";
    }

    @RequestMapping("/del/{paperId}")
    public String deletePaper(@PathVariable("paperId") Long id) {
        paperService.deletePaperById(id);
        return "redirect:/paper/allPaper";
    }

    @RequestMapping("toUpdatePaper")
    public String toUpdatePaper(Model model, Long id) {
        model.addAttribute("paper", paperService.queryById(id));
        return "paper/updatePaper";
    }

    @RequestMapping("/updatePaper")
    public String updatePaper(Model model, Paper paper) {
        paperService.updatePaper(paper);
        paper = paperService.queryById(paper.getPaperId());
        model.addAttribute("paper", paper);
        return "redirect:/paper/allPaper";
    }
}
