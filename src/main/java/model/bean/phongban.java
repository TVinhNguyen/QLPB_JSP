package model.bean;

public class phongban {
    private String IDPB;
    private String TenPB;
    private String MoTa;

    public phongban(String IDPB, String tenPB, String moTa) {
        this.IDPB = IDPB;
        TenPB = tenPB;
        MoTa = moTa;
    }

    public String getIDPB() {
        return IDPB;
    }

    public void setIDPB(String IDPB) {
        this.IDPB = IDPB;
    }

    public String getTenPB() {
        return TenPB;
    }

    public void setTenPB(String tenPB) {
        TenPB = tenPB;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setMoTa(String moTa) {
        MoTa = moTa;
    }
}
