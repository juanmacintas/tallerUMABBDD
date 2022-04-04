# Getting Started
Proyecto Biblioteca con base de datos NO Relacional

### Arrancando la aplicación

1. Crear una instancia de base de datos MongoDB mediante docker con el comando: 

> docker run -p 27017:27017 --name some-mongo -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=test -d mongo

2. Crear una instancia Redis con docker con el comando: 

> docker run --name my-redis -p 6379:6379 -d redis

3. Arrancar la aplicación tallerUMABBDD. 

> mvn spring-boot:run

Esto creará el modelo de datos en la base de datos Mongo.

4. Ejecutar la aplicación load-data.

> mvn clean test

Esto realizará la inserción de registros de prueba haciendo uso de [Karate](https://github.com/karatelabs/karate)

5. Verificar los datos existentes haciendo uso de los distintos endpoints de los controladores rest

    1. /getAllAutores: Obtener los autores

    > http://localhost:8080/getAllAutores
    
    2. /getAllCategorias: Obtener las categorías

    > http://localhost:8080/getAllCategorias
    
    3. /getAllEditoriales: Obtener las editoriales

    > http://localhost:8080/getAllEditoriales
    
    4. /getAllLibros: Obtener los libros

    > http://localhost:8080/getAllLibros
