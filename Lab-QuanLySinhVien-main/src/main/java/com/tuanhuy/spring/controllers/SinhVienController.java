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
import com.tuanhuy.spring.models.SinhVien;
import com.tuanhuy.spring.services.KhoaHocService;
import com.tuanhuy.spring.services.SinhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/sinhvien")
public class SinhVienController {

    @Autowired
    private SinhVienService sinhVienService;
    @Autowired
    private KhoaHocService khoaHocService;

    @GetMapping("/add")
    public String showAddSinhVienForm(Model model) {
        List<KhoaHoc> khoaHocs = khoaHocService.getKhoaHocs();
        model.addAttribute("khoahocList", khoaHocs);
        model.addAttribute("sinhvien", new SinhVien());
        return "add-sinhvien";
    }

    @PostMapping("/add")
    public String addSinhVien(@ModelAttribute("sinhvien") SinhVien sinhvien) {
        sinhVienService.saveSinhVien(sinhvien);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public ModelAndView showEditSinhVienForm(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView("update-sinhvien");
        SinhVien sinhvien = sinhVienService.getSinhVien(id).orElseThrow(() -> new IllegalArgumentException("Invalid SinhVien ID"));
        List<KhoaHoc> khoaHocs = khoaHocService.getKhoaHocs();
        modelAndView.addObject("khoahocList", khoaHocs);
        modelAndView.addObject("sinhvien", sinhvien);
        return modelAndView;
    }

    @GetMapping("/delete/{id}")
    public String deleteSinhVien(@PathVariable("id") Long id) {
        sinhVienService.deleteSinhVien(id);
        return "redirect:/";
    }
}