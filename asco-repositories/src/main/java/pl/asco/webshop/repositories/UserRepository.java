package pl.asco.webshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.asco.webshop.common.entity.User;

/**
 * Author: Daniel
 */
public interface UserRepository extends JpaRepository<User, Long> {
}
