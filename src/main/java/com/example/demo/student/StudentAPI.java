package com.example.demo.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path="api/v1/student")
public class StudentAPI {

    private final StudentService studentService;

    @Autowired
    public StudentAPI(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping
    public List<Student> getStudents(){
        return studentService.getStudents();
    }

    @PostMapping
    public void addNewStudent(@RequestBody Student student){
        studentService.addNewStudent(student);
    }

    /*
    {
        "name":"Goncalo",
        "email": "goncaloptguga@gmail.com",
        "dob": "2004-12-01"
    }

     */


}
