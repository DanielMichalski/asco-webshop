package pl.asco.webshop.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author: Daniel
 */
@Controller
public class IndexController {

    @RequestMapping("/")
    public String goIndex() {
        return "index";
    }

}
