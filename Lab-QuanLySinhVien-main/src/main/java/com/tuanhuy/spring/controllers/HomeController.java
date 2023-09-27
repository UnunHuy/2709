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

import com.tuanhuy.spring.models.SinhVien;
import com.tuanhuy.spring.services.SinhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    SinhVienService service;

    @RequestMapping(value = "/")
    public String index(Model model) {
        List<SinhVien> listSinhVien = service.getSinhViens();
        model.addAttribute("sinhviens", listSinhVien);
        return "index";
    }


    @RequestMapping(value = "sinhvien/{id}", method = RequestMethod.GET)
    public String details(@PathVariable Long id, Model model) {
        Optional<SinhVien> sinhvien = service.getSinhVien(id);
        model.addAttribute("sinhvien", sinhvien.get());
        return "details";
    }

//    @ModelAttribute("sinhvien")
//    public SinhVien setLoginModel() {
//        return new SinhVien();
//    }
//
//    @RequestMapping(value = "sinhvien/add", method = RequestMethod.GET)
//    public String addSinhVien() {
//        return "add-sinhvien";
//    }
//
//    @RequestMapping(value = "sinhvien/update/{id}", method = RequestMethod.GET)
//    public String editSinhVien(@PathVariable Long id, Model model) {
//        SinhVien sinhvien = service.getSinhVien(id).get();
//        model.addAttribute("sinhvien", sinhvien);
//        return "update-sinhvien";
//    }
//
//    @ModelAttribute("sinhvien")
//    public SinhVien setSinhVienModal() {
//        return new SinhVien();
//    }
//
//    @RequestMapping(value = "sinhvien/saveSinhVien", method = RequestMethod.POST)
//    public String saveSinhVien(@ModelAttribute("sinhvien") SinhVien sinhvien, Model model) {
//        service.saveSinhVien(sinhvien);
//        return "redirect:/";
//    }
//
//    @RequestMapping(value = "sinhvien/update/saveUpdateSinhVien", method = RequestMethod.POST)
//    public String saveUpdateSinhVien(@ModelAttribute("sinhvien") SinhVien sinhvien, Model model) {
//        service.saveSinhVien(sinhvien);
//        return "redirect:/";
//    }
//
//    @RequestMapping(value = "sinhvien/delete/{id}", method = RequestMethod.GET)
//    public String deleteSinhVien(@PathVariable Long id) {
//        service.deleteSinhVien(id);
//        return "redirect:/";
//    }

}