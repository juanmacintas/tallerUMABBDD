package org.uma.biblioteca.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

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
public class InfoAdicionalDto {

    /**
     * Id.
     */
    private int id;

    /**
     * ISBN del libro.
     */
    private String isbn;

    /**
     * Fecha publicación del libro.
     */
    private Integer fechaPublicacion;

    /**
     * Idioma del libro.
     */
    private String idioma;

    /**
     * Objeto libro.
     */
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private LibroDto libro;

}
