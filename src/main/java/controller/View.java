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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/View/*")
public class View extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        if(path != null || !path.equals("")) {
            switch (path) {
                case "/NV":
                    viewNV(req, resp);
                    break;
                case "/PB":
                    viewPB(req, resp);
                    break;
                case "/xemthongtinNVPB":
                    xemthongtinNVPB(req, resp);
                    break;
                case "/capnhatPB":
                    viewcapnhatPB(req, resp);
                    break;
                case "/xoiamotNV":
                    viewxoamotNV(req, resp);
                    break;
                case "/xoanhieuNV":
                    viewxoanhieuNV(req, resp);
                    break;
                case "/viewtimkiem":
                    viewtimkiem(req, resp);
                    break;
                case "/viewLogin":
                    viewLogin(req, resp);
                    break;

                default:
                    resp.sendError(404);

            }
        } else {
            resp.getWriter().print("Trang goc cua View");
        }
    }
    private void viewNV(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<nhanvien> nhanvienList = null;
        AdminBO adminBO = new AdminBO();
        nhanvienList = adminBO.getNhanvien();
        req.setAttribute("nhanvienList", nhanvienList);
        String destination = "/WebContent/xemthongtinNV.jsp";
        RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
        dispatcher.forward(req, resp);
    }
    private void viewPB(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<phongban> phongbanList = null;
        AdminBO adminBO = new AdminBO();
        phongbanList = adminBO.getPhongban();
        req.setAttribute("phongbanList", phongbanList);
        String destination = "/WebContent/xemthongtinPB.jsp";
        RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
        dispatcher.forward(req, resp);
    }
    private void xemthongtinNVPB(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<nhanvien> nhanvienList = null;
        AdminBO adminBO = new AdminBO();

        String q = req.getParameter("idpb");
        if (q == null || q.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid or missing idpb parameter");
            return;
        }

        try {
            nhanvienList = adminBO.getNhanvienByIDPB(q);
            if (nhanvienList == null) {
                nhanvienList = new ArrayList<>();
            }
            req.setAttribute("nhanvienList", nhanvienList);
            String destination = "/WebContent/xemthongtinNV.jsp";
            RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
            dispatcher.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while retrieving data.");
        }
    }
    private void viewcapnhatPB(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<phongban> phongbanList = null;
        AdminBO adminBO = new AdminBO();
        phongbanList = adminBO.getPhongban();
        req.setAttribute("phongbanList", phongbanList);
        String destination = "/WebContent/viewcapnhatPB.jsp";
        RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
        dispatcher.forward(req, resp);
    }
    private void viewxoamotNV(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<nhanvien> nhanvienList = null;
        AdminBO adminBO = new AdminBO();
        nhanvienList = adminBO.getNhanvien();
        req.setAttribute("nhanvienList", nhanvienList);
        String destination = "/WebContent/viewxoamotNV.jsp";
        RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
        dispatcher.forward(req, resp);
    }
    private void viewxoanhieuNV(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<nhanvien> nhanvienList = null;
        AdminBO adminBO = new AdminBO();
        nhanvienList = adminBO.getNhanvien();
        req.setAttribute("nhanvienList", nhanvienList);
        String destination = "/WebContent/viewxoanhieuNV.jsp";
        RequestDispatcher dispatcher = req.getRequestDispatcher(destination);
        dispatcher.forward(req, resp);
    }
    private  void viewtimkiem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/WebContent/timkiem.jsp");
    }
    private  void viewLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/WebContent/login.jsp");
    }


}
