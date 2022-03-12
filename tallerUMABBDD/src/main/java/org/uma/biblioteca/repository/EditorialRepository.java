package org.uma.biblioteca.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;
import org.uma.biblioteca.entity.Editorial;



public interface EditorialRepository extends MongoRepository<Editorial, Integer> {

	@Query("select e from Editorial e where e.nombre like %?1")
	List<Editorial> findByNombreEndsWith(String nombre);

	@Query(value = "SELECT * FROM EDITORIAL WHERE NOMBRE LIKE %?1", nativeQuery = true)
	List<Editorial> findNativeByNombreEndsWith(String nombre);

	@Query("select e from Editorial e where e.nombre = :nombreEditorial")
	Editorial findNamedParameterByName(@Param("nombreEditorial") String nombreEditorial);
}