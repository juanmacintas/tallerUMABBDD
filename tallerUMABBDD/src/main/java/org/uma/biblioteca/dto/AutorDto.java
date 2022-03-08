package org.uma.biblioteca.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
public class AutorDto {

    /**
     * Id.
     */
    private int id;

    /**
     * Nombre del autor.
     */
    private String nombre;

    /**
     * Libros.
     */
    @JsonIgnore
    List<LibroDto> libros;
}
