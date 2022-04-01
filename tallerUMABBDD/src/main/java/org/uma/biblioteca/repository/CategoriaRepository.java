package org.uma.biblioteca.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.uma.biblioteca.entity.Categoria;


public interface CategoriaRepository extends MongoRepository<Categoria, String> {


}