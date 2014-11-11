package pl.asco.webshop.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.asco.webshop.common.entity.User;
import pl.asco.webshop.service.service.UserService;

import java.security.Principal;

/**
 * Author: Daniel
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/users")
    public String users(Model model) {
        model.addAttribute("users", userService.findAll());
        return "users";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegister(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String doRegister(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:register?success=true";
    }

    @RequestMapping("/account")
    public String account(Model model, Principal principal){
        String userName = principal.getName();
        model.addAttribute("user", userService.findOneByName(userName));
        return "user-detail";
    }

}
