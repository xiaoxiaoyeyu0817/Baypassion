package com.baypassion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

    @RequestMapping("/baypassion-web")
    public String welcomePage() {
        return "index";
    }

}
