# README




Yumny Ruby on Rails App with Testing V1
(and Machine learning Recommendation engine with V2)

Circle CI Code Climate

Post your favorite Recipies and have new ones recommended
Software used in Cookin

Cookin runs on these technologies:

Rails 4.1.7
Ruby 2.1.3
PostgreSQL
JQuery
Bootstrap 3.3.2
Circle CI for continuous integration
Heroku for deployment
AWS - S3
Code Climate
Ruby Gems Installed in Cookin

Cookin uses the following Gems:

sqlite3
better_errors (streamlined development)
rails_12factor (heroku deployment)
bootstrap-sass
carrierwave
mini_magick
will_paginate
bootstrap-will_paginate
bcrypt
fog
pry
Cookin uses the following Gems in production (heroku deployment):

pg(postgreSQL)
thin
rails_12factor
unicorn
Run the following commands to use these gems

To install to your machine, run
  <code>gem install name_of_gem_to_install</code>
To include the gem into your app,
    add each gem to your Gemfile, then
    run <code>bundle install</code>
Databases in Yumny

To set up the database in Yumny, please be sure to install Posgresql to your local machine, and to include the 'pg' gem in the app.

In order to run the test suite, in development you'll need to rake the migration files with the following command:
rake db:migrate

Deploy to Heroku

To deploy this app live to Heroku I had to first sign up for an account at Heroku, download the Heroku Toolbelt, and then follow these steps from the command line.

run git init
run heroku login (enter username and password)
run heroku create (name-your-app)
run git add -A then run git commit -m "changes"
run git push heroku master
run heroku run rake db:migrate
See it live Cookin on Heroku!
###Running the test suite in Cookin

run: rake test

###Thanks for checking out Yumny!

Feel free to ask questions or send pull requests. Or Go to Cookin and set up a profile and add some new recipes! Donations can be made in mental hugs. Thank you!

testing specs for Yumny:
name: string
summary: text
description: text

- name must ne present
- name must be between 5 characters and less than 100 characters
- summaru must be present
- summary must be between 10 characters and less than 150 characters
- descript must be present
- description must be between 20 characters and 500 characters.
- chef_id must be present
- chefname must be present 
- chef name must be between 3 characters and less than 40 characters
- email must be present 
- email must be unique (since we'll use this for log ins later)
- email must be valid

We already did
- Chef Model and validations
- chefs table with columns chefname and email

What we need to do:
- Add passwords to the chef table so chefs can be authenticated and logged in
- Use email as log in credentials, since email is unique
- Ability to register new chefs to use the app
- Ability to show chefs profile
- Ability to list chefs using the app
- Abiltity for chefs to log in and log out of the app
- Restring likes and create recipe for chefs that are logged in only
- Restricting edit to chefs who created the recipe only


