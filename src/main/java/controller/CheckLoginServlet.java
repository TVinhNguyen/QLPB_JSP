package controller;

import model.bean.nhanvien;
import model.bean.phongban;
import model.bo.AdminBO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/CheckLoginServlet")
public class CheckLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String destination = null;
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        AdminBO adminBO = new AdminBO();
        List<nhanvien> nhanvienList = null;
        List<phongban> phongbanList = null;
        try {
            if(adminBO.isValidAdmin(username, password)) {
                nhanvienList = adminBO.getNhanvien();
                req.setAttribute("nhanvienList", nhanvienList);
                phongbanList = adminBO.getPhongban();
                req.setAttribute("phongbanList", phongbanList);

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
