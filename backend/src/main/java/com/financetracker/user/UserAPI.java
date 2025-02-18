package com.financetracker.user;

import io.vavr.control.Either;
import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.logging.Logger;

@RestController
@RequestMapping("api/user")
public class UserAPI {

    private final UserService userService;

    @Autowired
    public UserAPI(UserService userService) {
        this.userService = userService;
    }

    @PostMapping(path="/valid")
    public ResponseEntity<String> userValid(@RequestBody User user){

            Either<Exception, Boolean> valid = userService.userValid(user.getEmail(),user.getPassword());

            return valid.fold(
                    e ->{
                        System.out.println("Exception found:" + e.getMessage());
                        return new ResponseEntity<>("User not found", HttpStatus.NOT_FOUND);
                    },
                    value -> {
                        if(value){
                            System.out.println("User found and authorized");
                            return new ResponseEntity<>("Authorized", HttpStatus.OK);
                        }else {
                            System.out.println("User found and unauthorized");
                            return new ResponseEntity<>("Unauthorized", HttpStatus.UNAUTHORIZED);
                        }
                    }
            );
    }
}
