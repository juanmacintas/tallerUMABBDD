package org.uma.biblioteca.service;

import java.util.List;
import java.util.Optional;

import org.uma.biblioteca.entity.Autor;

public interface AutorService {

    public List<Autor> findAll();

    public Optional<Autor> findById(String id);

    public void deleteById(String id);

    public Autor nuevoAutor(Autor autor);
}