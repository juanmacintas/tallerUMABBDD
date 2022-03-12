package org.uma.biblioteca.service;

import java.util.List;
import java.util.Optional;

import org.uma.biblioteca.entity.Editorial;


public interface EditorialService {

    public List<Editorial> findAll();

    public Optional<Editorial> findById(Integer id);

    public void deleteById(Integer id);

    public Editorial nuevaEditorial(Editorial editorial);
}