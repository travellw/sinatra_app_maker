# Sinatra App Maker
A Ruby command line application for quickly architecting Sinatra apps

## Introduction


Sinatra is a flexible, lightweight, and fun framework for building web applications. It can be used to make microservices, personal websites, prototypes, etc. Unlike Ruby on Rails, Sinatra does not have the magical power of automation. Every element (folders, directories, etc) must be created by the developer. This can be tedious for frequent users or unflattering for those who want to just want to get started. This tool adds a little Ruby on Rails automation to Sinatra for a more accessible developer experience. 

## How Does It Work?

A user can generate a standard template of a ready-to-run Sinatra app by executing the command `sinatra new [app_name]` within their terminal. After executing the command a new directory, inclusive of sub-directories and files, will be created with appropriate pathing.    

![alt text](https://github.com/travellw/sinatra_app_maker/blob/main/images/Screen%20Shot%202021-11-28%20at%205.11.47%20PM.png)

A user is also able to use flags (-v, -h, etc) to get additional information. If a user executes flags or a command synatx that is not within scope, they will receive the appropriate error message as a response.

![alt text](https://github.com/travellw/sinatra_app_maker/blob/main/images/Screen%20Shot%202021-11-28%20at%205.36.27%20PM.png)

Once the creation prompt completes the user should be able to `cd` into the new directory and immediately execute `ruby app.rb` which will run the application on the user's `localhost` on `port 4567`.

![alt text](https://github.com/travellw/sinatra_app_maker/blob/main/images/Screen%20Shot%202021-11-28%20at%205.13.31%20PM.png)

An image of Frank Sinatra will be displayed in the user's browser at `http://localhost:4567/`.

![alt text](https://github.com/travellw/sinatra_app_maker/blob/main/images/Screen%20Shot%202021-11-28%20at%206.29.32%20PM.png)

## Architecture 


All Ruby! 


## Getting Started 


### Soft Run (Quickstart)

1. Clone the repo on to your local machine
2. `cd` into the project directory
3. Run `ruby script.rb` 
4. Declare the name of the app by responding to the prompt - 'What is the Apps' name'?
5. Once the creation prompt completes, `cd` into the project directory resembling the name you shared in step 4. 
6. Run `ruby app.rb`
7. While the server is running in your terminal, navigate to localhost:4567 within your browser.
8. Observe a 'Welcome to Sinatra' page.

## Reference Documentation 

[How to Build Command Line Applications with Ruby](https://www.rubyguides.com/2018/12/ruby-argv/)

[Sinatra Documentation](http://sinatrarb.com/documentation.html)

[ARGF](https://ruby-doc.org/core-2.4.0/ARGF.html)

[Awesome Talk By OG Command Line Application Rubyist Dave Copeland](https://www.youtube.com/watch?v=1ILEw6Qca3U&t=201s)
