package org.uma.biblioteca.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Juan Manuel Cintas
 *
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LibroDto {

    /**
     * Id.
     */
    private String id;

    /**
     * Titulo del libro.
     */
    private String titulo;

    /**
     * Descripcion.
     */
    private String descripcion;

    /**
     * Categoria
     */
    private CategoriaDto categoria;

    /**
     * Autores.
     */
    private List<AutorDto> autores;

    /**
     * Editorial.
     */
    private EditorialDto editorial;

    /**
     * Favorite
     */
    private Boolean favorite;


    private InfoAdicionalDto informacion;

}
