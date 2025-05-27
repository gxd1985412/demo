package org.example.springboot.demos.web;

import org.example.springboot.entity.Article;
import org.example.springboot.service.ArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/template")
public class TemplateController {

    @Resource
    ArticleService articleService;

    @GetMapping("/freemarker")
    public String index(Model model) {
        List<Article> articles = articleService.list();
        model.addAttribute("articles", articles);
        return "freemarker";
    }

    @GetMapping("/test")
    public String test(Model model) {
        List<Article> articles = articleService.list();
        model.addAttribute("articles", articles);
        return "test_01";
    }
}
