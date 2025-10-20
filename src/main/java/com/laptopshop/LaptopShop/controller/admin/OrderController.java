package com.laptopshop.LaptopShop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class OrderController {
    @RequestMapping("/admin/order")
    public String getOrder() {
        return "admin/order/order";
    }
    
}
