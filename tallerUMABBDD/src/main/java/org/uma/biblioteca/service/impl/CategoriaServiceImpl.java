package org.uma.biblioteca.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.uma.biblioteca.entity.Categoria;
import org.uma.biblioteca.repository.CategoriaRepository;
import org.uma.biblioteca.service.CategoriaService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CategoriaServiceImpl implements CategoriaService {

	@Autowired
	private CategoriaRepository categoriaRepository;


	@Override
	public List<Categoria> findAll() {
		log.debug("Se obtienen todas las categorias.");
		return categoriaRepository.findAll();
	}


	@Override
	@Cacheable(value = "categoria", key = "#id")
	public Optional<Categoria> findById(Integer id) {
		log.debug("Se obtiene la categoria con id:" + id);
		return categoriaRepository.findById(id);
	}


	@Override
	public Categoria nuevaCategoria(Categoria categoria) {
		log.debug("Se añade la categoria:" + categoria);
		return categoriaRepository.save(categoria);

	}


	@Override
	public void deleteById(Integer id) {
		log.debug("Se elimina la categoria con id:" + id);
		categoriaRepository.deleteById(id);

	}
}
