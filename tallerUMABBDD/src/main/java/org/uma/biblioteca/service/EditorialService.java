package org.uma.biblioteca.service;

import java.util.List;
import java.util.Optional;

import org.uma.biblioteca.entity.Editorial;


public interface EditorialService {

    public List<Editorial> findAll();

    public Optional<Editorial> findById(String id);

    public void deleteById(String id);

    public Editorial nuevaEditorial(Editorial editorial);
}