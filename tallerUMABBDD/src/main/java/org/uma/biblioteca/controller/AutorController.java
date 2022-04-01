package org.uma.biblioteca.controller;

import java.util.ArrayList;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.uma.biblioteca.dto.AutorDto;
import org.uma.biblioteca.entity.Autor;
import org.uma.biblioteca.service.AutorService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController("autor")
public class AutorController {

    @Autowired
    AutorService autorService;

    DozerBeanMapper mapper = new DozerBeanMapper();

    @GetMapping("/getAllAutores")
    public List<AutorDto> getAll() {
    	log.debug("Obtiene la lista de Autores");
        List<Autor> listAutores = autorService.findAll();
        List<AutorDto> listAutorDto = new ArrayList<AutorDto>();

        listAutores.forEach(r -> listAutorDto.add(mapper.map(r, AutorDto.class)));

        return listAutorDto;

    }

    @PostMapping("/insertAutor")
    public void insert(@RequestBody AutorDto autorDto) {
    	log.debug("Inserta un nuevo Autor:"+ autorDto);
    	Autor autor = mapper.map(autorDto, Autor.class);

    	autorService.nuevoAutor(autor);
    }

    @PostMapping("/deleteAutor")
    public void delete(@RequestBody AutorDto autorDto) {
    	log.debug("Elimina el autor con id:"+ autorDto.getId());

    	autorService.deleteById(String.valueOf(autorDto.getId()));
    }

}
