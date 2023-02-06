package com.example.webappembedded;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WebController {
    @RequestMapping("/hello/{name}")
    String hello(@PathVariable String name) {
        return "Hello, your name is '" + name + "'!";
    }

}
