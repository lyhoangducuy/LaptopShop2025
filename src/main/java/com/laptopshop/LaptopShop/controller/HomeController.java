package com.laptopshop.LaptopShop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public record HomeController() {
    @RequestMapping("/")
    public String home() {
        return "home";
    }
}
