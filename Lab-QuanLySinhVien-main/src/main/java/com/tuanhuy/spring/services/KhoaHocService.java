package com.tuanhuy.spring.services;

import com.tuanhuy.spring.models.KhoaHoc;
import com.tuanhuy.spring.repository.KhoaHocRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class KhoaHocService {
    @Autowired
    private KhoaHocRepository khoaHocRepository;

    @Transactional
    public List<KhoaHoc> getKhoaHocs() {
        return khoaHocRepository.findAll();
    }

    @Transactional
    public void saveKhoaHoc(KhoaHoc theKhoaHoc) {
        khoaHocRepository.save(theKhoaHoc);
    }

    @Transactional
    public Optional<KhoaHoc> getKhoaHoc(Long theId) {
        return khoaHocRepository.findById(theId);
    }

    @Transactional
    public void deleteKhoaHoc(Long theId) {
        khoaHocRepository.deleteById(theId);
    }

}
