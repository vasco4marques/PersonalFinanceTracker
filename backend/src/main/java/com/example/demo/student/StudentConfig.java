package com.example.demo.student;


import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.time.Month;
import java.util.List;

//@Configuration
//public class StudentConfig {

//    @Bean
//    CommandLineRunner commandLineRunner(StudentRepository studentRepository){
//        return args -> {
//
//            Student vasco = new Student(
//                    "Vasco Marques",
//                    "vasco4marques@gmail.com",
//                    LocalDate.of(2004, Month.JANUARY, 5)
//            );
//
//            Student joao = new Student(
//                    "Vasco Marques",
//                    "joao2@gmail.com",
//                    LocalDate.of(2001, Month.MARCH, 23)
//
//            );
//
//            studentRepository.saveAll(
//                    List.of(vasco,joao)
//            );
//        };
//    }

//}
