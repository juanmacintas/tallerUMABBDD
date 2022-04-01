package org.uma.biblioteca.dto;

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
public class EditorialDto {

    /**
     * Id.
     */
    private String id;

    /**
     * Nombre de la editorial.
     */
    private String nombre;

}
