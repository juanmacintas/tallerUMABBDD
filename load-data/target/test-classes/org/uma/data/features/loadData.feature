Feature: functionalTest

Background:
    * url 'http://localhost:8080'

Scenario: load Editoriales into database

Given path '/editorial/inserEditorial'
And request [{"id":1,"nombre":"Planeta"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":2,"nombre":"B DE BOOKS"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":3,"nombre":"DEBOLS!LLO"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":4,"nombre":"ALFAGUARA"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":5,"nombre":"Minotauro"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":6,"nombre":"RESERVOIR BOOKS"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":7,"nombre":"e-artnow"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":8,"nombre":"Nova"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":9,"nombre":"Booket"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":10,"nombre":"EDHASA"}]
When method post
Then status 200
Given path '/editorial/inserEditorial'
And request [{"id":11,"nombre":"Planeta DeAgostini Cómics"}]
When method post
Then status 200

Scenario: Clean data
Given path '/clean'
And request {}
When method post
Then status 200