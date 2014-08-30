package pl.asco.webshop.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import pl.asco.webshop.common.model.Person;

/**
 * Author: Daniel
 */
public interface PersonRepository extends CrudRepository<Person, Long> {

    public Iterable<Person> findByName(String name);

    @Query("select p from Person p where p.name = :name order by p.name")
    public Iterable<Person> findByNameUsingJPQL(@Param("name") String name);
}
