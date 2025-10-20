package com.laptopshop.LaptopShop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ProductController {
    @RequestMapping("/admin/product")
    public String getProduct() {
        return "admin/product/product";
    }
    
}
