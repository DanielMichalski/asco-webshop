package pl.asco.webshop.web.controller;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.asco.webshop.common.model.Person;
import pl.asco.webshop.common.util.AutowiredLogger;
import pl.asco.webshop.repositories.PersonRepository;
import pl.asco.webshop.repositories.TeamRepository;

import javax.validation.Valid;

/**
 * Author: Daniel
 */
@Controller
@RequestMapping("/person")
public class PersonController {

    @AutowiredLogger
    private Logger logger;

    @Autowired
    private PersonRepository personRepository;

    @Autowired
    private TeamRepository teamRepository;

    @RequestMapping("/add")
    public String addPerson(Model model) {
        model.addAttribute("person", new Person());
        model.addAttribute("teams", teamRepository.findAll());
        return "add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String savePerson(@Valid Person person, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("teams", teamRepository.findAll());
            return "add";
        }
        personRepository.save(person);
        return "redirect:/";
    }

    @RequestMapping("/list")
    public String list(Model model) {
        Iterable<Person> peoples = personRepository.findAll();
        model.addAttribute("peoples", peoples);
        return "personList";
    }

    @RequestMapping("/edit")
    public String edit(@RequestParam("id") Long id, Model model) {

        Person person = personRepository.findOne(id);
        model.addAttribute("person", person);
        model.addAttribute("teams", teamRepository.findAll());

        return "add";
    }

    @RequestMapping("/messages")
    public String showMessages(Long personId, Model model) {
        model.addAttribute("person", personRepository.findOne(personId));
        return "message_list";
    }

    @RequestMapping("/search")
    public String search(String name, Model model) {
        Iterable<Person> peoples = personRepository.findByNameUsingJPQL(name);
        model.addAttribute("peoples", peoples);
        return "personList";
    }

}
