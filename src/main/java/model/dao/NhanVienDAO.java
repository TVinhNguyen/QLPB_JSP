package model.dao;

import DB.Database;
import model.bean.nhanvien;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NhanVienDAO {
    public List<nhanvien> getAllNhanVien() {
        List<nhanvien> list = new ArrayList<nhanvien>();
        Connection conn = Database.getConnection();
        String sql = "select * from nhanvien";

        try {
            Statement ps = conn.createStatement();
            ResultSet rs = ps.executeQuery(sql);
            while (rs.next()) {
                String IDNV = rs.getString("IDNV");
                String HoTen = rs.getString("HoTen");
                String IDPB = rs.getString("IDPB");
                String DiaChi = rs.getString("DiaChi");
                list.add(new nhanvien(IDNV, HoTen, IDPB, DiaChi));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;

    }
    public List<nhanvien> getNhanVienByIDPB(String idpb) {
        List<nhanvien> list = new ArrayList<nhanvien>();
        Connection conn = Database.getConnection();
        String sql = "SELECT * FROM nhanvien WHERE IDPB = ?";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, idpb);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String IDNV = rs.getString("IDNV");
                String HoTen = rs.getString("HoTen");
                String IDPB = rs.getString("IDPB");
                String DiaChi = rs.getString("DiaChi");
                list.add(new nhanvien(IDNV, HoTen, IDPB, DiaChi));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    public boolean addNhanVien(nhanvien nhanvien) {
        Connection conn = Database.getConnection();
        String sql = "INSERT INTO nhanvien (IDNV, HoTen, IDPB, DiaChi) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nhanvien.getIDNV());
            ps.setString(2, nhanvien.getHoTen());
            ps.setString(3, nhanvien.getIDPB());
            ps.setString(4, nhanvien.getDiaChi());

            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
    public boolean deleteNhanVien(String idnv) {
        Connection conn = Database.getConnection();
        String sql = "DELETE FROM nhanvien WHERE IDNV = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, idnv);
            if(ps.executeUpdate() > 0)
            {
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
    public List<nhanvien> getNVbyOption(String option , String text) {
        List<nhanvien> nv = new ArrayList<nhanvien>();
        try {
            Connection conn = Database.getConnection();
            String sql = "SELECT * FROM nhanvien WHERE " + option +  " LIKE ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"%" +  text + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String IDNV = rs.getString("IDNV");
                String HoTen = rs.getString("HoTen");
                String IDPB = rs.getString("IDPB");
                String DiaChi = rs.getString("DiaChi");
                nhanvien nhanvien = new nhanvien(IDNV,HoTen,IDPB,DiaChi);
                nv.add(nhanvien);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return nv;
    }

}
