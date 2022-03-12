package org.uma.biblioteca.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.uma.biblioteca.entity.InfoAdicional;


public interface InfoAdicionalRepository extends MongoRepository<InfoAdicional, Integer> {


}