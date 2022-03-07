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
And request {"id":11,"nombre":"Planeta DeAgostini C�mics"}
When method post
Then status 200


Scenario: load Categorias into database

Given path '/insertCategoria'
And request {"id":"1","nombre":"Ciencia Ficci�n"}
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
And request {"id":6,"nombre":"C�mic"}
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
And request {"id":11,"nombre":"Fantas�a"}
When method post
Then status 200

Scenario: load Autores into database

Given path '/insertAutor'
And request {"id":"1","nombre":"Ken Follett"}
When method post
Then status 200
Given path '/insertAutor'
And request {"id":2,"nombre":"Eva Garc�a S�enz de Urturi"}
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
And request {"id":9,"nombre":"Juan G�mez-Jurado"}
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
And request {"id":"1",  "titulo":"Los Pilares de la Tierra",  "descripcion":"Descripci�n de los Pilares de la Tierra",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"1", "nombre":"Planeta"},  "favorite":true,  "informacion": {"id": 1, "isbn": "8466341781", "fecha_publicacion": 2017,     "idioma": "Espa�ol", "libro": {"id": 1} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"2",  "titulo":"Los Ritos del Agua",  "descripcion":"Descripci�n de los Ritos del Agua",  "categoria": {"id":"8","nombre":"Policiaca"},  "editorial": {"id":"1", "nombre":"Planeta"},  "favorite":false,  "informacion": {"id": 2, "isbn": "8408169459", "fecha_publicacion": 2017,     "idioma": "Espa�ol", "libro": {"id": 2} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"3",  "titulo":"El guardi�n de recuerdos",  "descripcion":"Descripci�n de el guardi�n de recuerdos",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"1", "nombre":"Planeta"},  "favorite":false,  "informacion": {"id": 3, "isbn": "0000000000", "fecha_publicacion": 2016,     "idioma": "Espa�ol", "libro": {"id": 3} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"4",  "titulo":"Ready Player One",  "descripcion":"Descripci�n de Ready Player One",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"8", "nombre":"Nova"},  "favorite":false,  "informacion": {"id": 4, "isbn": "0099560437", "fecha_publicacion": 2012,     "idioma": "Espa�ol", "libro": {"id": 4} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"5",  "titulo":"Dracula",  "descripcion":"Descripci�n de Dracula",  "categoria": {"id":"3","nombre":"Terror"},  "editorial": {"id":"7", "nombre":"e-artnow"},  "favorite":false,  "informacion": {"id": 5, "isbn": "8467036028", "fecha_publicacion": 2011,     "idioma": "Espa�ol", "libro": {"id": 5} }}}
When method post
Then status 200