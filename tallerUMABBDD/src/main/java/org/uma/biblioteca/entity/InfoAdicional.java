package org.uma.biblioteca.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Juan Manuel Cintas
 *
 */
@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class InfoAdicional {

    /**
     * Id.
     */
    @Id
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
    @OneToOne
    @MapsId
    private Libro libro;

}
