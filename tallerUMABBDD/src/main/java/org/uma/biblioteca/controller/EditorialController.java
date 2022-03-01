package org.uma.biblioteca.controller;

import java.util.ArrayList;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.uma.biblioteca.dto.EditorialDto;
import org.uma.biblioteca.entity.Editorial;
import org.uma.biblioteca.service.EditorialService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController("editorial")
public class EditorialController {

    @Autowired
    EditorialService editorialService;

    DozerBeanMapper mapper = new DozerBeanMapper();

    @GetMapping("/getAllEditoriales")
    public List<EditorialDto> getAll() {
    	log.debug("Obtiene la lista de Editoriales");
        List<Editorial> listEditorial = editorialService.findAll();
        List<EditorialDto> listEditorialDto = new ArrayList<EditorialDto>();

        listEditorial.forEach(r -> listEditorialDto.add(mapper.map(r, EditorialDto.class)));

        return listEditorialDto;

    }


    @PostMapping("/inserEditorial")
    public void insert(@RequestBody EditorialDto editorialDto) {
    	log.debug("Inserta una nueva Editorial:"+ editorialDto);
    	Editorial editorial = mapper.map(editorialDto, Editorial.class);

    	editorialService.nuevaEditorial(editorial);
    }

    @PostMapping("/deleteEditorial")
    public void delete(@RequestBody EditorialDto editorialDto) {
    	log.debug("Elimina la editorial con id:"+ editorialDto.getId());

    	editorialService.deleteById(editorialDto.getId());
    }
}
