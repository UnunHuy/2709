package com.tuanhuy.spring.models;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class KhoaHoc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "tenkhoahoc")
    private String tenkhoahoc;

    @Column(name = "nienkhoa")
    private String nienkhoa;

    @OneToMany(mappedBy = "khoahoc", cascade = CascadeType.ALL)
    private Collection<SinhVien> sinhviens;

    public KhoaHoc() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTenkhoahoc() {
        return tenkhoahoc;
    }

    public void setTenkhoahoc(String tenkhoahoc) {
        this.tenkhoahoc = tenkhoahoc;
    }

    public String getNienkhoa() {
        return nienkhoa;
    }

    public void setNienkhoa(String nienkhoa) {
        this.nienkhoa = nienkhoa;
    }

    public Collection<SinhVien> getSinhviens() {
        return sinhviens;
    }

    public void setSinhviens(Collection<SinhVien> sinhviens) {
        this.sinhviens = sinhviens;
    }
}
