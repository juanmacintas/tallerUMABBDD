package org.uma.biblioteca.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.uma.biblioteca.entity.Autor;


public interface AutorRepository extends MongoRepository<Autor, String> {


}