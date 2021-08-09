package br.edu.infnet.model.domain;

public class Student {

    private String name;
    private int age;
    private float monthlyPayment;
    private String email;
    private String category;
    private String region;
    private String[] subjects;

    public Student(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public void print() {
        System.out.println(this);

        System.out.println("Subjects:");
        for (String disc : subjects) {
            System.out.println("- " + disc);
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public float getMonthlyPayment() {
        return monthlyPayment;
    }

    public void setMonthlyPayment(float monthlyPayment) {
        this.monthlyPayment = monthlyPayment;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String[] getSubjects() {
        return subjects;
    }

    public void setSubjects(String[] subjects) {
        this.subjects = subjects;
    }
}