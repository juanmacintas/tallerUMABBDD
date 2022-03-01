# Getting Started

## Overview
Load data project

### Starting instructions

1. Clone the project in your local
2. Remember to start ingestion project before
3. Go to root directory and run 
> mvn clean test
4. Once executed go to your PostgreSQL client, connect to docker database and validate that tables raw and clean are now populated with sample data

# How did we generate input data?
We use the script in [test-data-generation-script](src/test/resources/test-data-generation-script.js) and executed in [json-generator](https://json-generator.com/)
