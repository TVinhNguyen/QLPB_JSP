package controller;

import model.bean.nhanvien;
import model.bean.phongban;
import model.bo.AdminBO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/CRUD/*")
public class Handler extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String path = req.getPathInfo();
        if(path != null || !path.equals("")) {
            switch (path) {
                case "/add":
                    themNVadd(req, resp);
                    break;
                case "/edit":
                    edit(req, resp);
                    break;
                case "/xoanhieuNV":
                    xoanhieuNV(req, resp);
                    break;
                case "/timkiemNV":
                    timkiemNV(req, resp);
                    break;
                default:
                    resp.sendError(404);

            }
        } else {
            resp.getWriter().print("Trang goc cua Handler");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String path = req.getPathInfo();
        if(path != null || !path.equals("")) {
            switch (path) {
                case "/themNV":
                    themNV(req, resp);
                    break;

                case "/capnhatPB":
                    capnhatPB(req, resp);
                    break;
                case "/xoaNV":
                    deleteNV(req, resp);
                    break;

                default:
                    resp.sendError(404);

            }
        } else {
            resp.getWriter().print("Trang goc cua Handler");
        }
    }

    private void themNV(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AdminBO adminBO = new AdminBO();
        List<phongban> phongbanList = adminBO.getPhongban();
        req.setAttribute("phongbanList", phongbanList);
        String destination = "/WebContent/themNV.jsp";
        RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
        dispatcher.forward(req, resp);
    }
    private void themNVadd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("IDNV");
        String name = req.getParameter("HoTen");
        String idpb = req.getParameter("IDPB");
        String diachi = req.getParameter("DiaChi");
        nhanvien nv = new nhanvien(id,name,idpb,diachi);
        AdminBO adminBO = new AdminBO();
        if(adminBO.addNhanvien(nv)){
            resp.sendRedirect("/View/NV");

        }
        else {
            resp.sendError(404);
        }
    }
    private  void capnhatPB(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AdminBO adminBO = new AdminBO();
        String idpb = req.getParameter("idpb");
        phongban pb = adminBO.getPhongbanByIDPB(idpb);
        req.setAttribute("IDPB", pb.getIDPB()); req.setAttribute("TenPB", pb.getTenPB()); req.setAttribute("MoTa",pb.getMoTa());
        String destination = "/WebContent/capnhatPB.jsp";
        RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
        dispatcher.forward(req, resp);
    }
    private  void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AdminBO adminBO = new AdminBO();
        String id = req.getParameter("IDPB");
        String tenPB = req.getParameter("TenPB");
        String moTa = req.getParameter("MoTa");
        if(adminBO.updatePhongBan(new phongban(id,tenPB,moTa))){
            resp.sendRedirect("/View/capnhatPB");
        }
        else {
            resp.sendError(404);
        }
    }
    private void deleteNV(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AdminBO adminBO = new AdminBO();
        String id = req.getParameter("idnv");
        if(adminBO.deleteNhanvien(id)){
            resp.sendRedirect("/View/xoamotNV");
        }
        else {
            resp.sendError(404);
        }
    }
    private void xoanhieuNV(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AdminBO adminBO = new AdminBO();
        String[] idnv = req.getParameterValues("idnv");
        for(String idv : idnv){
            adminBO.deleteNhanvien(idv);
        }
        resp.sendRedirect("/View/xoanhieuNV");

    }
    private void timkiemNV(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AdminBO adminBO = new AdminBO();
        String option = req.getParameter("option");
        String text = req.getParameter("infor");

        List<nhanvien> nhanvienList = adminBO.getNVbyOption(option,text);
        if(nhanvienList.size()!=0)
        {
            req.setAttribute("nhanvienList", nhanvienList);
            String destination = "/WebContent/xemthongtinNV.jsp";
            RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
            dispatcher.forward(req, resp);
        }
    }
}
