package br.edu.infnet.controller;

import br.edu.infnet.model.domain.Student;
import br.edu.infnet.model.repository.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AccessController", value = "/AccessController")
public class AccessController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Student student = StudentDao.validate(email, password);

        if (student != null) {
            request.setAttribute("studentList", StudentDao.getList());
            request.getRequestDispatcher("student/list.jsp").forward(request, response);
        } else {
            request.setAttribute("message", "Invalid authentication  " + email + "!");
            doGet(request, response);
        }
    }
}