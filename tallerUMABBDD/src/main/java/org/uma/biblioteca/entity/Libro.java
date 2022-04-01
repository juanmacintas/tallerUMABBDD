package org.uma.biblioteca.entity;

import java.util.List;

import org.springframework.data.annotation.Id;

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
public class Libro {

    /**
     * Id.
     */
    @Id
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
     * Categoria ID.
     */
    private Categoria categoria;

    /**
     * Autores.
     */
    private List<Autor> autores;

    /**
     * Editorial.
     */
    private Editorial editorial;

    /**
     * Favorite
     */
    private Boolean favorite;

    private InfoAdicional informacion;

}
