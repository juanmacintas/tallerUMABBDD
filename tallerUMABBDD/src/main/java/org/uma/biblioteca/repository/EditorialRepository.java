package org.uma.biblioteca.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.uma.biblioteca.entity.Editorial;



public interface EditorialRepository extends MongoRepository<Editorial, String> {


}