package org.uma.biblioteca.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.QueryByExampleExecutor;
import org.uma.biblioteca.entity.Libro;



public interface LibroRepository extends MongoRepository<Libro, Integer>, QueryByExampleExecutor<Libro>, JpaSpecificationExecutor<Libro>  {

    public List<Libro> findByFavoriteTrue();

    public Optional<Libro> findByTitulo(String titulo);

    public  List<Libro> findByAutores_nombre(String nombre);

    public  List<Libro> findByAutores_nombreIgnoreCase(String nombre);

    public  List<Libro> findByAutores_id(Integer id);

    public  List<Libro> findByAutores_nombreAndCategoria_nombre(String autor, String categoria);

    public  List<Libro> findByCategoria_nombreIn(List<String> categorias);

    public  List<Libro> findByCategoria_nombreNotIn(List<String> categorias);

    public List<Libro> findByEditorial_nombreStartsWith(String editorial);

    public List<Libro> findByTituloLike(String titulo);

    public Optional<Libro> findFirstByOrderByIdDesc();
}