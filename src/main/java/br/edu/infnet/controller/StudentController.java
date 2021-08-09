package br.edu.infnet.controller;

import br.edu.infnet.model.domain.Student;
import br.edu.infnet.model.repository.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentController", value = "/StudentController")
public class StudentController extends HttpServlet {

    public StudentController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String screen = request.getParameter("screen");

        if("studentList".equals(screen)) {
            request.getRequestDispatcher("student/register.jsp").forward(request, response);
        } else {
            request.setAttribute("studentList", StudentDao.getList());
            request.getRequestDispatcher("student/list.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Student student = new Student(request.getParameter("name"), request.getParameter("email"));
        student.setAge(Integer.parseInt(request.getParameter("age")));
        student.setMonthlyPayment(Float.parseFloat(request.getParameter("monthlyPayment")));
        student.setCategory(request.getParameter("category"));
        student.setRegion(request.getParameter("region"));
        student.setSubjects(request.getParameterValues("subjects"));

        StudentDao.addStudent(student);

        request.setAttribute("studentName", student.getName());
        request.setAttribute("studentList", StudentDao.getList());

        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}