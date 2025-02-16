package com.example.demo.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "api/v1/student")
public class StudentAPI {

    private final StudentService studentService;

    @Autowired
    public StudentAPI(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping
    public List<Student> getStudents() {
        return studentService.getStudents();
    }

    @PostMapping
    public void addNewStudent(@RequestBody Student student) {
        studentService.addNewStudent(student);
    }

    @DeleteMapping(path = "{studentId}")
    public void deleteStudent(@PathVariable("studentId") Long id) {
        studentService.deleteStudent(id);
    }

    @PutMapping(path = "edit/{studentId}")
    public void updateStudent(
            @PathVariable("studentId") Long id,
            @RequestBody Student student
    ) {
        studentService.updateStudent(id, student.getName(), student.getEmail());
        System.out.println(student.getEmail());
    }


}
