package com.turkcell.spring.first.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("home")
@RequiredArgsConstructor
public class HomeController {
    // http://localhost:8080/home

    private final MessageSource messageSource;
    @GetMapping()
    public String get(){
        return messageSource.getMessage("hello", null, LocaleContextHolder.getLocale());
    }


}
