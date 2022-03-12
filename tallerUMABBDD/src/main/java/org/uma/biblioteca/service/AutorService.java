package org.uma.biblioteca.service;

import java.util.List;
import java.util.Optional;

import org.uma.biblioteca.entity.Autor;

public interface AutorService {

    public List<Autor> findAll();

    public Optional<Autor> findById(Integer id);

    public void deleteById(Integer id);

    public Autor nuevoAutor(Autor autor);
}