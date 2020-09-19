# TODOS Backend
This todos backend is written in Ruby on rails 6. Just create a todo and you are on your way. Visit the frontend here.


## Information
- Ruby Version:    2.6.3
- Rails Version:   6.0.3
- Database:        pg

## How To Run This Service

Make your your system has rvm. Install the above dependencies. Follow these steps:
- Clone this repository.
- bundle install
- rake db:setup

## Deploying to Heroku

Follow these steps to deploy to Heroku:
- Make sure you are logged in from your Heroku-cli.
- `heroku create`
- `git push heroku master`
- `heroku run rake db:setup`

## API Spec

This service has a couple of end points. It can be accessed from the POSTMAN collection included in the folder.




 
 
