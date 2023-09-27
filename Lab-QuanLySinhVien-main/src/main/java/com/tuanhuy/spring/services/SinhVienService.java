package com.tuanhuy.spring.services;

import com.tuanhuy.spring.models.SinhVien;
import com.tuanhuy.spring.repository.SinhVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class SinhVienService {
    @Autowired
    private SinhVienRepository sinhVienRepository;

    @Transactional
    public List<SinhVien> getSinhViens() {
        return sinhVienRepository.findAll();
    }

    @Transactional
    public void saveSinhVien(SinhVien theSinhVien) {
        sinhVienRepository.save(theSinhVien);
    }

    @Transactional
    public Optional<SinhVien> getSinhVien(Long theId) {
        return sinhVienRepository.findById(theId);
    }

    @Transactional
    public void deleteSinhVien(Long theId) {
        sinhVienRepository.deleteById(theId);
    }

}
