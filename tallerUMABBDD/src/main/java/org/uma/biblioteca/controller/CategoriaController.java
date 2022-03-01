package org.uma.biblioteca.controller;

import java.util.ArrayList;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.uma.biblioteca.dto.CategoriaDto;
import org.uma.biblioteca.entity.Categoria;
import org.uma.biblioteca.service.CategoriaService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController("categoria")
public class CategoriaController {

    @Autowired
    CategoriaService categoriaService;

    DozerBeanMapper mapper = new DozerBeanMapper();

    @GetMapping("/getAllCategorias")
    public List<CategoriaDto> getAll() {
    	log.debug("Obtiene la lista de Categorías");
        List<Categoria> listCategoria = categoriaService.findAll();
        List<CategoriaDto> listCategoriaDto = new ArrayList<CategoriaDto>();

        listCategoria.forEach(r -> listCategoriaDto.add(mapper.map(r, CategoriaDto.class)));

        return listCategoriaDto;

    }

    @PostMapping("/insertCategoria")
    public void insert(@RequestBody CategoriaDto categoriaDto) {
    	log.debug("Inserta una nueva Categoría:"+ categoriaDto);
    	Categoria categoria = mapper.map(categoriaDto, Categoria.class);

    	categoriaService.nuevaCategoria(categoria);
    }

    @PostMapping("/deleteCategoria")
    public void delete(@RequestBody CategoriaDto categoriaDto) {
    	log.debug("Elimina la categoria con id:"+ categoriaDto.getId());

    	categoriaService.deleteById(categoriaDto.getId());
    }

}
