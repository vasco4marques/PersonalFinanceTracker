package com.financetracker.user;


import io.vavr.control.Either;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Either<Exception,Boolean> userValid(String email, String password){
        Optional<User> user = userRepository.getUserByEmail(email);

        if(user.isEmpty()){
            return Either.left(new IllegalStateException("User with the email: " + email+" , was not found"));
        }

        if(user.get().getPassword().equals(password)){
            return Either.right(true);
        }else{
            return Either.right(false);
        }

    }

}
