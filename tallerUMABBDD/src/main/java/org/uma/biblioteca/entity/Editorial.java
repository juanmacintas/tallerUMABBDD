package org.uma.biblioteca.entity;

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
public class Editorial {

    /**
     * Id.
     */
    @Id
    private String id;

    /**
     * Nombre de la editorial.
     */
     private String nombre;


}
