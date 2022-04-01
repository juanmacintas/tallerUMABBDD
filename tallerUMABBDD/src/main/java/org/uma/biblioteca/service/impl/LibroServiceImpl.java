package org.uma.biblioteca.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.uma.biblioteca.entity.Libro;
import org.uma.biblioteca.repository.LibroRepository;
import org.uma.biblioteca.service.LibroService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LibroServiceImpl implements LibroService {

	@Autowired
	private LibroRepository libroRepository;


	@Override
	public List<Libro> findByFavoriteTrue() {
		log.debug("Se obtienen todos los libros favoritos");
		return libroRepository.findByFavoriteTrue();
	}


	@Override
	public List<Libro> findAll() {
		log.debug("Se obtienen todos los libros");
		return libroRepository.findAll();
	}


	@Override
	public List<Libro> findByExample(Libro libro) {
		log.debug("Se obtienen todos los libros coincidentes");
		Example<Libro> exLibro = Example.of(libro);
		return libroRepository.findAll(exLibro);
	}


	@Override
	public Optional<Libro> findById(String id) {
		log.debug("Se busca el libro del id" + id);
		return libroRepository.findById(id);
	}


	@Override
	public Libro nuevoLibro(Libro libro) {
		log.debug("Se inserta el libro:" + libro);
		return  libroRepository.save(libro);
	}


	@Override
	public void deleteById(String id) {
		log.debug("Se elimina el libro con id:" + id);
		libroRepository.deleteById(id);
	}

}
