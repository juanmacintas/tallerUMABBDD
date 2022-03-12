package org.uma.biblioteca.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.uma.biblioteca.entity.Editorial;
import org.uma.biblioteca.repository.EditorialRepository;
import org.uma.biblioteca.service.EditorialService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EditorialServiceImpl implements EditorialService {

	@Autowired
	private EditorialRepository editorialRepository;


	@Override
	public List<Editorial> findAll() {
		log.debug("Se obtienen todas las editoriales");
		return editorialRepository.findAll();
	}


	@Override
	public Optional<Editorial> findById(Integer id) {
		log.debug("Se obtiene la editorial con id:" + id);
		return editorialRepository.findById(id);
	}


	@Override
	public void deleteById(Integer id) {
		log.debug("Se elimina la editorial con id:" + id);
		editorialRepository.deleteById(id);

	}


	@Override
	public Editorial nuevaEditorial(Editorial editorial) {
		log.debug("Se añade la editorial:" + editorial);
		return editorialRepository.save(editorial);
	}

}
