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
public class Autor {

    /**
     * Id.
     */
    @Id
    private String id;

    /**
     * Nombre del autor.
     */
    private String nombre;

    /**
     * Libros.
     */
    List<Libro> libros;
}
