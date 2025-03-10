package com.example.demo.student;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.Month;
import java.util.List;
import java.util.Optional;

@Service
public class StudentService {

    private final StudentRepository studentRepository;

    @Autowired
    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public List<Student> getStudents() {
        return studentRepository.findAll();
    }

    public void addNewStudent(Student student) {
        Optional<Student> studentByEmail = studentRepository.findStudentByEmail(student.getEmail());
        if (studentByEmail.isPresent()) {
            throw new IllegalStateException("Email already taken");
        }

        studentRepository.save(student);
    }

    public void deleteStudent(Long id) {
        boolean exists = studentRepository.existsById(id);
        if (!exists) {
            throw new IllegalStateException("Student with id: " + id + " does not exist");
        }

        studentRepository.deleteById(id);
    }

    @Transactional
    public void updateStudent(
            Long id,
            String name,
            String email
    ) {
        Student student = studentRepository.findById(id)
                .orElseThrow(() -> new IllegalStateException("Student not found"));

        if (name != null && !name.isEmpty() && !name.equals(student.getName())) {
            student.setName(name);
        }

        if (email != null && !email.isEmpty() && !email.equals(student.getEmail())) {
            student.setEmail(email);
        }

        studentRepository.updateStudent(student.getId(), student.getName(), student.getEmail());
    }

}
