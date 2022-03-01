package org.uma.biblioteca.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

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
    @Id
    private Integer id;

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
