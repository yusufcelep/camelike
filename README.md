<h1 align="center">- Camelike -</h1>

<div align="center">
  A <code>Rails</code> microblogging web application for our furry friends!
</div>
<br/>

## Features 
- Sign in/Sign up option with authenticated password
- View/Edit profile 
- Follow/Unfollow other users
- Full CRUD capabilities for post such as 
  - Create a post
  - View all posts written on this application
  - Edit/Delete only the posts written by the logged in user 
- Like/Unlike only the posts written by other users
- Add comments to any post
 
## Tech Stack
This web app makes use of the following:
- Ruby [2.6.1]
- Rails [~> 6.0.2] - MVC Web Framework
- SQLite3 [~> 1.4] - Database
- Bulma-Rails [~> 0.8.0] - Integrates Bulma with the rails asset pipeline, a modern CSS framework based on Flexbox.
- BCrypt [~> 3.1.7] - Gem for encryption

## Installing

- Clone this repo to your local machine `git clone <this-repo-url>`
- run `bundle install` to install required dependencies
- run `rails db:create` to create a database locally.
- run `rails db:migrate` to create tables into the database.
- run `rails db:seed` to create seed data.
- run `rails s` to run the server. 
