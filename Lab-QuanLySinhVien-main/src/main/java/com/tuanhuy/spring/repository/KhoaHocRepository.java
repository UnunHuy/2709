package com.tuanhuy.spring.repository;

import com.tuanhuy.spring.models.KhoaHoc;
import com.tuanhuy.spring.models.SinhVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KhoaHocRepository extends JpaRepository<KhoaHoc, Long> {


}
