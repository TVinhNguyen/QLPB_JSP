package controller;

import model.bean.nhanvien;
import model.bean.phongban;
import model.bo.AdminBO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

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

        try {
            if (adminBO.isValidAdmin(username, password)) {
                HttpSession session = req.getSession();
                session.setAttribute("loggedInUser", username);

                resp.setContentType("text/html;charset=UTF-8");
                resp.getWriter().println("<script type=\"text/javascript\">");
                resp.getWriter().println("window.top.location.href = '/WebContent/form.jsp';");
                resp.getWriter().println("</script>");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
