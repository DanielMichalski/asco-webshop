package pl.asco.webshop.service.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.asco.webshop.common.entity.Role;
import pl.asco.webshop.common.entity.User;
import pl.asco.webshop.repositories.RoleRepository;
import pl.asco.webshop.repositories.UserRepository;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: Daniel
 */
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public void save(User user) {
        user.setEnabled(true);
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        user.setPassword(encoder.encode(user.getPassword()));

        List<Role> roles = new ArrayList<>();
        roles.add(roleRepository.findByName("ROLE_USER"));
        user.setRoles(roles);

        userRepository.save(user);
    }

    public User findOneByName(String userName) {
        return userRepository.findByName(userName);
    }
}
