package br.edu.infnet.model.repository;

import br.edu.infnet.model.domain.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentDao {

    private static List<Student> students = new ArrayList<Student>();

    public static void addStudent(Student student) {
        students.add(student);
    }

    public static List<Student> getList() {
        return students;
    }

    public static Student validate(String email, String password) {

        if (email.equals(password)) {

            return new Student("Renan Marcilio", email);
        }
        return null;
    }
}