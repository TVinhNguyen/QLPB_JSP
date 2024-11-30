package model.dao;

import DB.Database;

import model.bean.nhanvien;
import model.bean.phongban;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PhongBanDAO {
    public List<phongban> getAllPhongBan() {
        List<phongban> list = new ArrayList<phongban>();
        Connection conn = Database.getConnection();
        String sql = "select * from phongban";

        try {
            Statement ps = conn.createStatement();
            ResultSet rs = ps.executeQuery(sql);
            while (rs.next()) {
                String IDPB = rs.getString("IDPB");
                String TenPB = rs.getString("TenPB");
                String MoTa = rs.getString("MoTa");
                list.add(new phongban(IDPB, TenPB, MoTa));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;

    }
    public phongban getPhongBanById(String idpb) {
        Connection conn = Database.getConnection();
        String sql = "SELECT * FROM phongban WHERE IDPB = ?";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, idpb);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String IDPB = rs.getString("IDPB");
                String TenPB = rs.getString("TenPB");
                String MoTa = rs.getString("MoTa");
                return  new phongban(IDPB, TenPB, MoTa);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
    public boolean updatePB(phongban phongban) {
        Connection conn = Database.getConnection();
        String sql = "UPDATE phongban SET TenPB = ? , MoTa = ? WHERE IDPB = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, phongban.getTenPB());
            ps.setString(2, phongban.getMoTa());
            ps.setString(3, phongban.getIDPB());
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}
