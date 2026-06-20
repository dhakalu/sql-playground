# SQL Playground

Repository to practice different SQL concepts.

## Datasets

### Sales

Randomly generated sales data. Contains a table named `sales` with columns:

| Name | Description | Null?|
|------|-------------|------|
| id | unique number | no |
| product_name | name of the product sold | no | 
| cost | dollar amount at which the product was bought by store | no | 
| price | dollar amoynt at which the product was sold to the customer | no |
| sold_on | Date on which the sales was made | no |  


## Starting play ground 

1. Run the database using command:
    ```bash
    docker compose up -d 
     ```
1. Connect to server running command:
    ```
    psql -h localhost -p 5454 -U user -d playground
    ```
1. Seup the schema and data with commands: 
    ```bash
    \i sales/reset.sql
    \i saeles/schema.sql
    \i sales/seed.sql
    ```
1. **Add/Run queries**: 
    Queries are stored in queries folder. Add new file to add new queries. Run queries using 
    ```
    \i sales/queries/<name_of_file>.sql
    ```