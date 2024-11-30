package model.bean;

public class nhanvien {
    private String IDNV;
    private String HoTen;
    private String IDPB;
    private String DiaChi;

    public nhanvien(String IDNV, String hoTen, String IDPB, String diaChi) {
        this.IDNV = IDNV;
        HoTen = hoTen;
        this.IDPB = IDPB;
        DiaChi = diaChi;
    }

    public String getIDNV() {
        return IDNV;
    }

    public void setIDNV(String IDNV) {
        this.IDNV = IDNV;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String hoTen) {
        HoTen = hoTen;
    }

    public String getIDPB() {
        return IDPB;
    }

    public void setIDPB(String IDPB) {
        this.IDPB = IDPB;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String diaChi) {
        DiaChi = diaChi;
    }
}
