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
Given path '/insertEditorial'
And request {"id":12,"nombre":"DESTINO"}
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
And request {"id":"1",  "titulo":"Los Pilares de la Tierra",  "descripcion":"Descripci�n de los Pilares de la Tierra",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"1", "nombre":"Planeta"}, "autores" : [{"id":"1"}], "favorite":true,  "informacion": {"id": 1, "isbn": "8466341781", "fechaPublicacion": 2017,     "idioma": "Espa�ol", "libro": {"id": 1} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"2",  "titulo":"Los Ritos del Agua",  "descripcion":"Descripci�n de los Ritos del Agua",  "categoria": {"id":"8","nombre":"Policiaca"},  "editorial": {"id":"1", "nombre":"Planeta"},"autores" : [{"id":"2"}],  "favorite":false,  "informacion": {"id": 2, "isbn": "8408169459", "fechaPublicacion": 2017,     "idioma": "Espa�ol", "libro": {"id": 2} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"3",  "titulo":"El guardi�n de recuerdos",  "descripcion":"Descripci�n de el guardi�n de recuerdos",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"1", "nombre":"Planeta"}, "autores" : [{"id":"3"}], "favorite":false,  "informacion": {"id": 3, "isbn": "0000000000", "fechaPublicacion": 2016,     "idioma": "Espa�ol", "libro": {"id": 3} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"4",  "titulo":"Ready Player One",  "descripcion":"Descripci�n de Ready Player One",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"8", "nombre":"Nova"},"autores" : [{"id":"8"}],  "favorite":false,  "informacion": {"id": 4, "isbn": "0099560437", "fechaPublicacion": 2012,     "idioma": "Espa�ol", "libro": {"id": 4} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"5",  "titulo":"Dracula",  "descripcion":"Descripci�n de Dracula",  "categoria": {"id":"3","nombre":"Terror"},  "editorial": {"id":"7", "nombre":"e-artnow"}, "autores" : [{"id":"4"}], "favorite":false,  "informacion": {"id": 5, "isbn": "8467036028", "fecha_publicacion": 2011,     "idioma": "Espa�ol", "libro": {"id": 5} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"6",  "titulo":"El marciano",  "descripcion":"Descripci�n de El marciano",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"1", "nombre":"Planeta"}, "autores" : [{"id":"6"}], "favorite":false,  "informacion": {"id": 6, "isbn": "8466655050", "fechaPublicacion": 2014, "idioma": "Espa�ol", "libro": {"id": 6} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"7",  "titulo":"Frankenstein",  "descripcion":"Descripci�n de Frankenstein",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"7", "nombre":"e-artnow"}, "autores" : [{"id":"5"}], "favorite":false,  "informacion": {"id": 7, "isbn": "8431671742", "fechaPublicacion": 2011, "idioma": "Espa�ol", "libro": {"id": 7} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"8",  "titulo":"Carrie",  "descripcion":"Descripci�n de Carrie",  "categoria": {"id":"3","nombre":"Terror"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"7"}], "favorite":false,  "informacion": {"id": 8, "isbn": "1444720694", "fechaPublicacion": 2011,   "idioma": "Ingl�s", "libro": {"id": 8} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"9",  "titulo":"It",  "descripcion":"Descripci�n de It",  "categoria": {"id":"3","nombre":"Terror"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"7"}], "favorite":true,  "informacion": {"id": 9, "isbn": "8497593790", "fechaPublicacion": 2016, "idioma": "Espa�ol", "libro": {"id": 9} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"10",  "titulo":"El Paciente",  "descripcion":"Descripci�n de El Paciente",  "categoria": {"id":"7","nombre":"Suspense"},  "editorial": {"id":"9", "nombre":"Booket"}, "autores" : [{"id":"9"}], "favorite":true,  "informacion": {"id": 10, "isbn": "8408139312", "fechaPublicacion": 2015, "idioma": "Espa�ol", "libro": {"id": 10} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"11",  "titulo":"La Leyenda del Ladr�n",  "descripcion":"Descripci�n de La Leyenda del Ladr�n",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"9", "nombre":"Booket"}, "autores" : [{"id":"9"}], "favorite":true,  "informacion": {"id": 11, "isbn": "8408113127", "fechaPublicacion": 2013, "idioma": "Espa�ol", "libro": {"id": 11} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"12",  "titulo":"El Nombre de la Rosa",  "descripcion":"Descripci�n de El Nombre de la Rosa",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"10"}], "favorite":false,  "informacion": {"id": 12, "isbn": "8422616467", "fechaPublicacion": 1986, "idioma": "Espa�ol", "libro": {"id": 12} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"13",  "titulo":"La legi�n olvidada",  "descripcion":"Descripci�n de La legi�n olvidada",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"2", "nombre":"B DE BOOKS"}, "autores" : [{"id":"11"}], "favorite":false,  "informacion": {"id": 13, "isbn": "8498722411", "fechaPublicacion": 2010, "idioma": "Espa�ol", "libro": {"id": 13} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"14",  "titulo":"Triple",  "descripcion":"Descripci�n de Triple",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"2", "nombre":"B DE BOOKS"}, "autores" : [{"id":"1"}], "favorite":false,  "informacion": {"id": 14, "isbn": "8849759312", "fechaPublicacion": 2014, "idioma": "Espa�ol", "libro": {"id": 14} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"15",  "titulo":"Un Mundo Sin Fin",  "descripcion":"Descripci�n de Un Mundo Sin Fin",  "categoria": {"id":"10","nombre":"Ficcion Historica"},  "editorial": {"id":"2", "nombre":"B DE BOOKS"}, "autores" : [{"id":"1"}], "favorite":false,  "informacion": {"id": 15, "isbn": "8499893732", "fechaPublicacion": 2019, "idioma": "Espa�ol", "libro": {"id": 15} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"16",  "titulo":"Yo, Robot",  "descripcion":"Descripci�n de Yo, Robot",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"10", "nombre":"EDHASA"}, "autores" : [{"id":"12"}], "favorite":false,  "informacion": {"id": 16, "isbn": "8435034828", "fechaPublicacion": 2007, "idioma": "Espa�ol", "libro": {"id": 16} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"17",  "titulo":"Trilog�a de la Fundaci�n",  "descripcion":"Descripci�n de Trilog�a de la Fundaci�n",  "categoria": {"id":"1","nombre":"Ciencia Ficci�n"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"12"}], "favorite":false,  "informacion": {"id": 17, "isbn": "849908320X", "fechaPublicacion": 2010, "idioma": "Espa�ol", "libro": {"id": 17} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"18",  "titulo":"Los muertos vivientes #1: D�as pasados",  "descripcion":"Descripci�n de Los muertos vivientes #1: D�as pasados",  "categoria": {"id":"6","nombre":"C�mic"},  "editorial": {"id":"1", "nombre":"Planeta DeAgostini C�mics"}, "autores" : [{"id":"13"}], "favorite":false,  "informacion": {"id": 18, "isbn": "846840277X", "fechaPublicacion": 2010, "idioma": "Espa�ol", "libro": {"id": 18} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"19",  "titulo":"Los muertos vivientes #2: D�as pasados",  "descripcion":"Descripci�n de Los muertos vivientes #2: D�as pasados",  "categoria": {"id":"6","nombre":"C�mic"},  "editorial": {"id":"1", "nombre":"Planeta DeAgostini C�mics"}, "autores" : [{"id":"13"}], "favorite":false,  "informacion": {"id": 19, "isbn": "8468402788", "fechaPublicacion": 2010, "idioma": "Espa�ol", "libro": {"id": 19} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"20",  "titulo":"Los muertos vivientes #3: D�as pasados",  "descripcion":"Descripci�n de Los muertos vivientes #3: D�as pasados",  "categoria": {"id":"6","nombre":"C�mic"},  "editorial": {"id":"1", "nombre":"Planeta DeAgostini C�mics"}, "autores" : [{"id":"13"}], "favorite":false,  "informacion": {"id": 20, "isbn": "8468477680", "fechaPublicacion": 2010, "idioma": "Espa�ol", "libro": {"id": 20} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"21",  "titulo":"El se�or de los anillos: La Comunidad del anillo",  "descripcion":"Descripci�n de El se�or de los anillos: La Comunidad del anillo",  "categoria": {"id":"11","nombre":"Fantas�a"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 21, "isbn": "8445000667", "fechaPublicacion": 2012, "idioma": "Espa�ol", "libro": {"id": 21} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"22",  "titulo":"El se�or de los anillos: La Dos Torres",  "descripcion":"Descripci�n de El se�or de los anillos: La Dos Torres",  "categoria": {"id":"11","nombre":"Fantas�a"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 22, "isbn": "8445000675", "fechaPublicacion": 2012, "idioma": "Espa�ol", "libro": {"id": 22} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"23",  "titulo":"El se�or de los anillos: El Retorno del Rey",  "descripcion":"Descripci�n de El se�or de los anillos: El Retorno del Rey",  "categoria": {"id":"11","nombre":"Fantas�a"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 23, "isbn": "8445000683", "fechaPublicacion": 2012, "idioma": "Espa�ol", "libro": {"id": 23} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"24",  "titulo":"El Hobbit",  "descripcion":"Descripci�n de El Hobbit",  "categoria": {"id":"11","nombre":"Fantas�a"},  "editorial": {"id":"5", "nombre":"Minotauro"}, "autores" : [{"id":"14"}], "favorite":false,  "informacion": {"id": 24, "isbn": "8467909226", "fechaPublicacion": 2013, "idioma": "Espa�ol", "libro": {"id": 24} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"25",  "titulo":"Orgullo y Prejuicio",  "descripcion":"Descripci�n de Orgullo y Prejuicio",  "categoria": {"id":"4","nombre":"Romantica"},  "editorial": {"id":"3", "nombre":"DEBOLS!LLO"}, "autores" : [{"id":"16"}], "favorite":false,  "informacion": {"id": 25, "isbn": "6079723956", "fechaPublicacion": 2018, "idioma": "Espa�ol", "libro": {"id": 25} }}}
When method post
Then status 200

Given path '/insertLibro'
And request {"id":"26",  "titulo":"Los hombres que no amaban a las mujeres",  "descripcion":"Descripci�n de Los hombres que no amaban a las mujeres",  "categoria": {"id":"2","nombre":"B DE BOOKS"},  "editorial": {"id":"12", "nombre":"DESTINO"}, "autores" : [{"id":"15"}], "favorite":false,  "informacion": {"id": 26, "isbn": "9788423356270", "fechaPublicacion": 2019, "idioma": "Espa�ol", "libro": {"id": 26} }}}
When method post
Then status 200