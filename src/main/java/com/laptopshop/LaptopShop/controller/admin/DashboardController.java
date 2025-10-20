package com.laptopshop.LaptopShop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class DashboardController {
    @RequestMapping("/admin")
    public String home() {
        return "admin/dashborad/dashborad";
    }
}
