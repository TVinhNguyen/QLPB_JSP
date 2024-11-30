package model.dao;

import DB.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {
    public boolean isExistAdmin(String username, String password) {
        try {
            Connection conn = Database.getConnection();
            String sql = "select * from admin where UserName=? and PassWord=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1,username);
            stmt.setString(2,password);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                return true;
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
