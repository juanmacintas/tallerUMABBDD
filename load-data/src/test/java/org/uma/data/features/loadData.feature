Feature: functionalTest

Background:
    * url 'http://localhost:8080'

Scenario: load Editoriales into database

Given path '/insertEditorial'
And request {"id":"1","nombre":"Planeta"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":2,"nombre":"B DE BOOKS"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":3,"nombre":"DEBOLS!LLO"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":4,"nombre":"ALFAGUARA"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":5,"nombre":"Minotauro"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":6,"nombre":"RESERVOIR BOOKS"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":7,"nombre":"e-artnow"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":8,"nombre":"Nova"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":9,"nombre":"Booket"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":10,"nombre":"EDHASA"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":11,"nombre":"Planeta DeAgostini Cómics"}
When method post
Then status 200
Given path '/insertEditorial'
And request {"id":12,"nombre":"DESTINO"}
When method post
Then status 200

Scenario: load Categorias into database

Given path '/insertCategoria'
And request {"id":"1","nombre":"Ciencia Ficción"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":2,"nombre":"Novela Negra"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":3,"nombre":"Terror"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":4,"nombre":"Romantica"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":5,"nombre":"Ensayo"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":6,"nombre":"Cómic"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":7,"nombre":"Suspense"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":8,"nombre":"Policiaca"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":9,"nombre":"Aventuras"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":10,"nombre":"Ficcion Historica"}
When method post
Then status 200
Given path '/insertCategoria'
And request {"id":11,"nombre":"Fantasía"}
When method post
Then status 200

Scenario: load Autores into database

Given path '/insertAutor'
And request {"id":"1","nombre":"Ken Follett"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":2,"nombre":"Eva García Sáenz de Urturi"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":3,"nombre":"Astrid Nilsen"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":4,"nombre":"Bram Stoker"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":5,"nombre":"Mary Shelley"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":6,"nombre":"Andy Weir"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":7,"nombre":"Stephen King"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":8,"nombre":"Ernest Cline"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":9,"nombre":"Juan Gómez-Jurado"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":10,"nombre":"Umberto Eco"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":11,"nombre":"Ben Kane"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":12,"nombre":"Isaac Asimov"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":13,"nombre":"Robert Kirkman"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":14,"nombre":"J.R.R. Tolkien"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":15,"nombre":"Stieg Larsson"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":16,"nombre":"Jane Austen"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":17,"nombre":"Michael Connelly"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":18,"nombre":"Helena Martin"}
When method post
Then status 200

Scenario: load Libros into database

Given path '/insertLibro'
And request {"id":"1",  "titulo":"Los Pilares de la Tierra",  "descripcion":"Descripción de los Pilares de la Tierra",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"1", "nombre":"Planeta"}, "autores" : [{"id":"1"}], "favorite":true,  "informacion": {"id": 1, "isbn": "8466341781", "fechaPublicacion": 2017,     "idioma": "Español", "libro": {"id": 1} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"2",  "titulo":"Los Ritos del Agua",  "descripcion":"Descripción de los Ritos del Agua",  "categoria": {"id":"8","nombre":"Policiaca"},  "editorial": {"id":"1", "nombre":"Planeta"},"autores" : [{"id":"2"}],  "favorite":false,  "informacion": {"id": 2, "isbn": "8408169459", "fechaPublicacion": 2017,     "idioma": "Español", "libro": {"id": 2} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"3",  "titulo":"El guardián de recuerdos",  "descripcion":"Descripción de el guardián de recuerdos",  "categoria": {"id":"1","nombre":"Ciencia Ficción"},  "editorial": {"id":"1", "nombre":"Planeta"}, "autores" : [{"id":"3"}], "favorite":false,  "informacion": {"id": 3, "isbn": "0000000000", "fechaPublicacion": 2016,     "idioma": "Español", "libro": {"id": 3} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"4",  "titulo":"Ready Player One",  "descripcion":"Descripción de Ready Player One",  "categoria": {"id":"1","nombre":"Ciencia Ficción"},  "editorial": {"id":"8", "nombre":"Nova"},"autores" : [{"id":"8"}],  "favorite":false,  "informacion": {"id": 4, "isbn": "0099560437", "fechaPublicacion": 2012,     "idioma": "Español", "libro": {"id": 4} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"5",  "titulo":"Dracula",  "descripcion":"Descripción de Dracula",  "categoria": {"id":"3","nombre":"Terror"},  "editorial": {"id":"7", "nombre":"e-artnow"}, "autores" : [{"id":"4"}], "favorite":false,  "informacion": {"id": 5, "isbn": "8467036028", "fecha_publicacion": 2011,     "idioma": "Español", "libro": {"id": 5} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"6",  "titulo":"El marciano",  "descripcion":"Descripción de El marciano",  "categoria": {"id":"1","nombre":"Ciencia Ficción"},  "editorial": {"id":"1", "nombre":"Planeta"}, "autores" : [{"id":"6"}], "favorite":false,  "informacion": {"id": 6, "isbn": "8466655050", "fechaPublicacion": 2014, "idioma": "Español", "libro": {"id": 6} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"7",  "titulo":"Frankenstein",  "descripcion":"Descripción de Frankenstein",  "categoria": {"id":"1","nombre":"Ciencia Ficción"},  "editorial": {"id":"7", "nombre":"e-artnow"}, "autores" : [{"id":"5"}], "favorite":false,  "informacion": {"id": 7, "isbn": "8431671742", "fechaPublicacion": 2011, "idioma": "Español", "libro": {"id": 7} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"8",  "titulo":"Carrie",  "descripcion":"Descripción de Carrie",  "categoria": {"id":"3","nombre":"Terror"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"7"}], "favorite":false,  "informacion": {"id": 8, "isbn": "1444720694", "fechaPublicacion": 2011,   "idioma": "Inglés", "libro": {"id": 8} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"9",  "titulo":"It",  "descripcion":"Descripción de It",  "categoria": {"id":"3","nombre":"Terror"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"7"}], "favorite":true,  "informacion": {"id": 9, "isbn": "8497593790", "fechaPublicacion": 2016, "idioma": "Español", "libro": {"id": 9} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"10",  "titulo":"El Paciente",  "descripcion":"Descripción de El Paciente",  "categoria": {"id":"7","nombre":"Suspense"},  "editorial": {"id":"9", "nombre":"Booket"}, "autores" : [{"id":"9"}], "favorite":true,  "informacion": {"id": 10, "isbn": "8408139312", "fechaPublicacion": 2015, "idioma": "Español", "libro": {"id": 10} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"11",  "titulo":"La Leyenda del Ladrón",  "descripcion":"Descripción de La Leyenda del Ladrón",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"9", "nombre":"Booket"}, "autores" : [{"id":"9"}], "favorite":true,  "informacion": {"id": 11, "isbn": "8408113127", "fechaPublicacion": 2013, "idioma": "Español", "libro": {"id": 11} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"12",  "titulo":"El Nombre de la Rosa",  "descripcion":"Descripción de El Nombre de la Rosa",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"10"}], "favorite":false,  "informacion": {"id": 12, "isbn": "8422616467", "fechaPublicacion": 1986, "idioma": "Español", "libro": {"id": 12} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"13",  "titulo":"La legión olvidada",  "descripcion":"Descripción de La legión olvidada",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"2", "nombre":"B DE BOOKS"}, "autores" : [{"id":"11"}], "favorite":false,  "informacion": {"id": 13, "isbn": "8498722411", "fechaPublicacion": 2010, "idioma": "Español", "libro": {"id": 13} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"14",  "titulo":"Triple",  "descripcion":"Descripción de Triple",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"2", "nombre":"B DE BOOKS"}, "autores" : [{"id":"1"}], "favorite":false,  "informacion": {"id": 14, "isbn": "8849759312", "fechaPublicacion": 2014, "idioma": "Español", "libro": {"id": 14} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"15",  "titulo":"Un Mundo Sin Fin",  "descripcion":"Descripción de Un Mundo Sin Fin",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"2", "nombre":"B DE BOOKS"}, "autores" : [{"id":"1"}], "favorite":false,  "informacion": {"id": 15, "isbn": "8499893732", "fechaPublicacion": 2019, "idioma": "Español", "libro": {"id": 15} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"16",  "titulo":"Yo, Robot",  "descripcion":"Descripción de Yo, Robot",  "categoria": {"id":"1","nombre":"Ciencia Ficción"},  "editorial": {"id":"10", "nombre":"EDHASA"}, "autores" : [{"id":"12"}], "favorite":false,  "informacion": {"id": 16, "isbn": "8435034828", "fechaPublicacion": 2007, "idioma": "Español", "libro": {"id": 16} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"17",  "titulo":"Trilogía de la Fundación",  "descripcion":"Descripción de Trilogía de la Fundación",  "categoria": {"id":"1","nombre":"Ciencia Ficción"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"12"}], "favorite":false,  "informacion": {"id": 17, "isbn": "849908320X", "fechaPublicacion": 2010, "idioma": "Español", "libro": {"id": 17} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"18",  "titulo":"Los muertos vivientes #1: Días pasados",  "descripcion":"Descripción de Los muertos vivientes #1: Días pasados",  "categoria": {"id":"6","nombre":"Cómic"},  "editorial": {"id":"1", "nombre":"Planeta DeAgostini Cómics"}, "autores" : [{"id":"13"}], "favorite":false,  "informacion": {"id": 18, "isbn": "846840277X", "fechaPublicacion": 2010, "idioma": "Español", "libro": {"id": 18} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"19",  "titulo":"Los muertos vivientes #2: Días pasados",  "descripcion":"Descripción de Los muertos vivientes #2: Días pasados",  "categoria": {"id":"6","nombre":"Cómic"},  "editorial": {"id":"1", "nombre":"Planeta DeAgostini Cómics"}, "autores" : [{"id":"13"}], "favorite":false,  "informacion": {"id": 19, "isbn": "8468402788", "fechaPublicacion": 2010, "idioma": "Español", "libro": {"id": 19} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"20",  "titulo":"Los muertos vivientes #3: Días pasados",  "descripcion":"Descripción de Los muertos vivientes #3: Días pasados",  "categoria": {"id":"6","nombre":"Cómic"},  "editorial": {"id":"1", "nombre":"Planeta DeAgostini Cómics"}, "autores" : [{"id":"13"}], "favorite":false,  "informacion": {"id": 20, "isbn": "8468477680", "fechaPublicacion": 2010, "idioma": "Español", "libro": {"id": 20} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"21",  "titulo":"El señor de los anillos: La Comunidad del anillo",  "descripcion":"Descripción de El señor de los anillos: La Comunidad del anillo",  "categoria": {"id":"11","nombre":"Fantasía"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 21, "isbn": "8445000667", "fechaPublicacion": 2012, "idioma": "Español", "libro": {"id": 21} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"22",  "titulo":"El señor de los anillos: La Dos Torres",  "descripcion":"Descripción de El señor de los anillos: La Dos Torres",  "categoria": {"id":"11","nombre":"Fantasía"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 22, "isbn": "8445000675", "fechaPublicacion": 2012, "idioma": "Español", "libro": {"id": 22} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"23",  "titulo":"El señor de los anillos: El Retorno del Rey",  "descripcion":"Descripción de El señor de los anillos: El Retorno del Rey",  "categoria": {"id":"11","nombre":"Fantasía"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 23, "isbn": "8445000683", "fechaPublicacion": 2012, "idioma": "Español", "libro": {"id": 23} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"24",  "titulo":"El Hobbit",  "descripcion":"Descripción de El Hobbit",  "categoria": {"id":"11","nombre":"Fantasía"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 24, "isbn": "8467909226", "fechaPublicacion": 2013, "idioma": "Español", "libro": {"id": 24} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"25",  "titulo":"Orgullo y Prejuicio",  "descripcion":"Descripción de Orgullo y Prejuicio",  "categoria": {"id":"4","nombre":"Romantica"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"16"}], "favorite":false,  "informacion": {"id": 25, "isbn": "6079723956", "fechaPublicacion": 2018, "idioma": "Español", "libro": {"id": 25} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"26",  "titulo":"Los hombres que no amaban a las mujeres",  "descripcion":"Descripción de Los hombres que no amaban a las mujeres",  "categoria": {"id":"2","nombre":"B DE BOOKS"},  "editorial": {"id":"12", "nombre":"DESTINO"}, "autores" : [{"id":"15"}], "favorite":false,  "informacion": {"id": 26, "isbn": "9788423356270", "fechaPublicacion": 2019, "idioma": "Español", "libro": {"id": 26} }}}
When method post
Then status 200