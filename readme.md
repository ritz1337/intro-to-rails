# Intro to Rails

# Research

Break into the following groups and answer the following
questions for your sqad.

Squad 1     | Squad 2        | Squad 3     | Squad 4
:--         | :--            | :--         | :-- 
__Routes__  | __Controller__ | __Model__   | __Migrations__
Tim         | Andrew         | Kora        | Qian
Jake        | Ritwik         | Barret      | Justin
Bao         | Michelle       | An          | Kris
Dakota      | Brad           | Lacey       | Abi
    
# Routes

http://guides.rubyonrails.org/routing.html

- [ ] What is the Purpose of the Rails Router?
- [ ] What does resource routing do?
- [ ] How would you handle an incoming get request to '/movies' 
- [ ] How would you route the request to the movies controller index action?
- [ ] What are dynamic segments?
- [ ] What does Rails do with query strings?

# Controllers

http://guides.rubyonrails.org/action_controller_overview.html

- [ ] What Does a Controller Do?
- [ ] What is Rails naming convention for controllers?
- [ ] What's a controller action?
- [ ] What does Rails do with query string parameters and POST parameters?
- [ ] What happens if the "Content-Type" header of your request is set to "application/json"?
- [ ] What are filters?

# Models

http://guides.rubyonrails.org/active_record_basics.html

- [ ] What is Active Record?
- [ ] What is an ORM?
- [ ] What is the Rails naming convention for models?
- [ ] What are the CRUD operations in ActiveRecord?

# Migrations

http://guides.rubyonrails.org/active_record_migrations.html

- [ ] What are migrations?
- [ ] What's a model generator?
- [ ] How do do you create a table for movies with title and year?
- [ ] How do you run a migration?
- [ ] How do you roll back a migration and what does it do?

# Development

http://edgeguides.rubyonrails.org/api_app.html

Squad 1 | Squad 2  | Squad 3 | Squad 4
:--     | :--      | :--     | :-- 
Tim     | Andrew   | Kora    | Qian
Ritwik  | Barret   | Justin  | Jake
An      | Kris     | Boa     | Michelle
Abi     | Dakotaa  | Brad    | Lacey
        |          |         | 

Create a new Rails app called "dead_letter_app" that produces a JSON api.

```
$ rails new dead_letter_app --api --database=postgresql
```

# The Data Model

Scaffold a Letter resource

A Letter should have a 
    - "to_address", 
    - "from_address", 
    - "message", 
    - "is_read" 

Create some seed data in `db/seeds.rb`

Write a migration to set "is_read" to default to "false"

Create an "index.html" page that gets served from "public"

When a user visits "/" 
    - they should see a form to create a new letter.

When a user fills out the form and clicks "create"
    - use jQuery's ajax or Fetch to create a new letter.

Provide a button to view all letters

When a user clicks "View All"
    - use jQuery's ajax or Fetch to retrieve all the letters and render them

Provide a link for each Letter to mark it as read.
    
When a user clicks on "Mark as read"
    - use jQuery's ajax or Fetch to update and mark that letter as read

Provide a button for each Letter to delete it.

When a user clicks "Destroy"
    - use jQuery's ajax or Fetch to destroy that letter


