package com.example.cicd;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class homeController {

    @GetMapping("/hello")
    public String hello(){
        return "Hello from kory is practicing CICD";
    }
}
