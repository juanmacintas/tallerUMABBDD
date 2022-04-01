# Getting Started
Proyecto Biblioteca con base de datos Relacional

## Modelo de Datos
En el ejemplo tenemos un modelo de datos relacional con las tablas necesarias para almacenar informaci�n para una biblioteca.
Se hace uso de JPA para la creaci�n de las entidades y sus relaciones.

<p align="center">
    <img src="img/modelo.png">
</p>

Es posible encontrar m�s informaci�n sobre el modelo y las relaciones en [Taller Spring Data JPA](https://github.com/juanmacintas/tallerJPASpringData/)

### Arrancando la aplicaci�n

1. Crear una instancia de base de datos PostgreSQL mediante docker con el comando: 

> docker run -p 5432:5432 --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

2. Arrancar la aplicaci�n tallerUMABBDD. 

> mvn spring-boot:run

Esto crear� el modelo de datos en la base de datos PostgreSQL por la configuraci�n de JPA del fichero application.properties
>spring.jpa.hibernate.ddl-auto=create-drop


