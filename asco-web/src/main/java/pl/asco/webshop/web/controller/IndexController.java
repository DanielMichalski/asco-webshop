package pl.asco.webshop.web.controller;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.asco.webshop.common.util.AutowiredLogger;

/**
 * Author: Daniel
 */

@Controller
public class IndexController {

    @AutowiredLogger
    private Logger logger;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showWelcomePage() {
        return "index";
    }
}
