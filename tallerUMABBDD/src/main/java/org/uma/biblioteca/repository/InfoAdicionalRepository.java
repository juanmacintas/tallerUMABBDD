package org.uma.biblioteca.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.uma.biblioteca.entity.InfoAdicional;



@Repository
public interface InfoAdicionalRepository extends JpaRepository<InfoAdicional, Integer> {


}