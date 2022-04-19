# Backend coding challenge
This is a graphql API that response with the provided data structure

### Task Done
* Design and implement a database schema to store the necessary data
* Create an  GraphQL API endpoint to retrieve all the records with the given structure
* The endpoint should allow to sort based on price
* The endpoint should allow to search by make
* Create GraphQL query to retrieve a single record, with the same object response

### DATA STRUCTURE

```
[
   {
      "id":"24uobf24jlgb",
      "make":"Tesla",
      "model":"X",
      "range":{
         "unit":"km",
         "distance":"450"
      },
      "colors":[
         "red",
         "black"
      ],
      "price":"110000 EUR",
      "photo":"https://car.com/car.jpg"
   },
   {
      "id":"2ejvb2rouvb",
      "make":"Tesla",
      "model":"X",
      "range":{
         "unit":"km",
         "distance":"420"
      },
      "colors":[
         "blue",
         "black"
      ],
      "price":"98000 EUR",
      "photo":"https://car.com/car2.jpg"
   },
   {
      "id":"8wbvwb0f8b",
      "make":"Mercedes Benz",
      "model":"EQC",
      "range":{
         "unit":"km",
         "distance":"450"
      },
      "colors":[
         "red",
         "gray"
      ],
      "price":"79000 EUR",
      "photo":"https://car.com/car3.jpg"
   },
   {
      "id":"89webvqbvq",
      "make":"Mercedes Benz",
      "model":"EQS",
      "range":{
         "unit":"km",
         "distance":"470"
      },
      "colors":[
         "red",
         "gray",
         "green"
      ],
      "price":"122000 EUR",
      "photo":"https://car.com/car4.jpg"
   },
   {
      "id":"56vhjbvqkbq",
      "make":"Audi",
      "model":"ETron",
      "range":{
         "unit":"km",
         "distance":"390"
      },
      "colors":[
         "black",
         "gray"
      ],
      "price":"88000 EUR",
      "photo":"https://car.com/car6.jpg"
   }
]
```


## Technologies
  * Ruby
  * Git
  * Graphql
  * Ruby on Rails

## Setup
 - Ensure you have [ruby](https://rvm.io/rvm/install) installed on your device

  Clone this repository and cd into the clone specific folder and run the following command accordingly

   ```bash
    bundle install
   ```

  ```bash
    rails db:create 
   ```

  ```bash
    rails db:migrate
   ```

  ```
   rails db:seed
  ```

  After to run server

  ```
  rails s
  ```

  then visit http://127.0.0.1:3000/graphiql 


### Pending tasks:

- Find the right Id for the Car to match the Id in the given data structure
- Write more model spec for order and disbursement 
