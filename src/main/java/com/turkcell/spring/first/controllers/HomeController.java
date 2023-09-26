package com.turkcell.spring.first.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("home")
public class HomeController {
    // http://localhost:8080/home
    @GetMapping("")
    public String get(){
        return "Merhaba";
    }


}
