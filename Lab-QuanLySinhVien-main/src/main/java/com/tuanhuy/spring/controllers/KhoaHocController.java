/**
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 * @author xuant
 */

/**
 * @author xuant
 *
 */
package com.tuanhuy.spring.controllers;

import com.tuanhuy.spring.models.KhoaHoc;
import com.tuanhuy.spring.models.KhoaHoc;
import com.tuanhuy.spring.services.KhoaHocService;
import com.tuanhuy.spring.services.KhoaHocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/khoahoc")
public class KhoaHocController {

    @Autowired
    private KhoaHocService khoaHocService;

    @GetMapping("")
    public ModelAndView showKhoaHoc() {
        ModelAndView modelAndView = new ModelAndView("list-khoahoc");
        modelAndView.addObject("khoahocs", khoaHocService.getKhoaHocs());
        return modelAndView;
    }
    @GetMapping("/add")
    public ModelAndView showAddKhoaHocForm() {
        ModelAndView modelAndView = new ModelAndView("add-khoahoc");
        modelAndView.addObject("khoahoc", new KhoaHoc());
        return modelAndView;
    }

    @PostMapping("/add")
    public String addKhoaHoc(@ModelAttribute("khoahoc") KhoaHoc khoahoc) {
        khoaHocService.saveKhoaHoc(khoahoc);
        return "redirect:/";
    }
}