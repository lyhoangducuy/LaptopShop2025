package com.laptopshop.LaptopShop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomepageController {
    @RequestMapping("/")
    public String getHomepage() {
        return "client/homepage/homepage";
    }
    
}
