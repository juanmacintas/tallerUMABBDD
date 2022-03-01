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
public class CategoriaDto {

    /**
     * Id.
     */
    private int id;

    /**
     * Nombre de la categoria.
     */
    private String nombre;


    /**
     * Libros de la categoría
     */
    private List<LibroDto> libros;
}
