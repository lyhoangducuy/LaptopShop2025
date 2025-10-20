package com.laptopshop.LaptopShop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class UserController {
    @RequestMapping("/admin/user")
    public String getMethodName() {
        return "admin/user/user";
    }
    
    @RequestMapping("/admin/user/create")
    public String getCreate() {
        return "admin/user/create";
    }
    @RequestMapping("/admin/user/detail")
    public String getDetail() {
        return "admin/user/detail";
    }
    
    
}
