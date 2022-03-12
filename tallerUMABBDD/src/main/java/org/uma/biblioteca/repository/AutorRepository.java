package org.uma.biblioteca.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.uma.biblioteca.entity.Autor;


public interface AutorRepository extends MongoRepository<Autor, Integer>,JpaSpecificationExecutor<Autor> {


}