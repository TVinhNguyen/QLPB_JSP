package model.bo;

import model.bean.nhanvien;
import model.bean.phongban;
import model.dao.AdminDAO;
import model.dao.NhanVienDAO;
import model.dao.PhongBanDAO;

import java.util.List;

public class AdminBO {
    private AdminDAO adminDAO = new AdminDAO();
    private NhanVienDAO nhanvienDAO = new NhanVienDAO();
    private PhongBanDAO phongbanDAO = new PhongBanDAO();
    public boolean isValidAdmin(String username, String password) {
        return adminDAO.isExistAdmin(username, password);
    }
    public List<nhanvien> getNhanvien() {
        return nhanvienDAO.getAllNhanVien();
    }
    public List<nhanvien> getNhanvienByIDPB(String idPB) {
        return nhanvienDAO.getNhanVienByIDPB(idPB);
    }
    public boolean addNhanvien(nhanvien nhanvien) {
        return nhanvienDAO.addNhanVien(nhanvien);
    }
    public boolean deleteNhanvien(String idnv) {
        return nhanvienDAO.deleteNhanVien(idnv);
    }
    public List<phongban> getPhongban() {
        return phongbanDAO.getAllPhongBan();
    }
    public phongban getPhongbanByIDPB(String idPB) {
        return phongbanDAO.getPhongBanById(idPB);
    }
    public boolean updatePhongBan(phongban phongban) {
        return phongbanDAO.updatePB(phongban);
    }
    public List<nhanvien> getNVbyOption(String option , String text) {return nhanvienDAO.getNVbyOption(option,text);}

}
