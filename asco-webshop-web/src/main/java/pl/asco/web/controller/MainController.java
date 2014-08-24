package pl.asco.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Author: Daniel
 */

@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showWelcomePage() {
        return "index";
    }
}
