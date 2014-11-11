package pl.asco.webshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.asco.webshop.common.entity.Role;

/**
 * Author: Daniel
 */
public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);

}
