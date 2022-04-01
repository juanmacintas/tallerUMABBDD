package org.uma.biblioteca.controller;

import java.util.ArrayList;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.uma.biblioteca.dto.LibroDto;
import org.uma.biblioteca.entity.Libro;
import org.uma.biblioteca.service.LibroService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController("libro")
public class LibroController {

    @Autowired
    LibroService libroService;

    DozerBeanMapper mapper = new DozerBeanMapper();

    @GetMapping("/getAllLibros")
    public List<LibroDto> getAll() {
    	log.debug("Obtiene la lista de Libros");
        List<Libro> listLibros = libroService.findAll();
        List<LibroDto> listLibrosDto = new ArrayList<LibroDto>();

        listLibros.forEach(r -> listLibrosDto.add(mapper.map(r, LibroDto.class)));

        return listLibrosDto;

    }

    @PostMapping("/insertLibro")
    public void insert(@RequestBody LibroDto libroDto) {
    	log.debug("Inserta un nuevo libro:"+ libroDto);
    	Libro libro = mapper.map(libroDto, Libro.class);

    	libroService.nuevoLibro(libro);
    }

    @PostMapping("/deleteLibro")
    public void delete(@RequestBody LibroDto libroDto) {
    	log.debug("Elimina el libro con id:"+ libroDto.getId());

    	libroService.deleteById(String.valueOf(libroDto.getId()));
    }

}
