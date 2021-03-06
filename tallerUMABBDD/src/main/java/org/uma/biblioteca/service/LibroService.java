package org.uma.biblioteca.service;

import java.util.List;

import org.uma.biblioteca.entity.Libro;


public interface LibroService {

    public List<Libro> findByFavoriteTrue();

    public List<Libro> findAll();

    public List<Libro> findByExample(Libro libro);

    public Libro findById(Integer id);

    public Libro nuevoLibro(Libro libro);

    public void deleteById(Integer id);
}