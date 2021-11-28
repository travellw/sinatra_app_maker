#!/usr/bin/ruby

#establish the app name
def create_app_name
    p 'Whats the app name?'
    @app_name = gets.chomp
end

#create the app.rb file
def create_app_file
    File.open("app.rb", "w") { |f| f.write "require 'sinatra'\nget '/' do\nerb :welcome\nend" }
    puts 'CREATED: app.rb'
end

#create the README.md file
def create_readme
    system("touch README.md")
    puts 'CREATED: README.md'
end

#create the Gemfile
def create_gemfile
    File.open("Gemfile", "w") { |f| f.write "source 'https://rubygems.org'\ngem 'sinatra'\n" }
    puts 'CREATED: Gemfile'
end

#create the Welcome.erb file
def create_welcome_file
    File.open("welcome.erb", "w") { |f| f.write "welcome to sinatra" }
    puts 'CREATED: welcome.erb'
end

#create the Config.ru file
def create_config_file
    system("touch config.ru")
    puts 'CREATED: config.ru'
end

#create views directory
def create_views_directory
    system("mkdir views")
    puts 'CREATED: views Directory'
end

#create public directory
def create_public_directory
    system("mkdir public")
    puts 'CREATED: public Directory'
end

#pull together all the directories and files 
def create_sinatra_app 
  
    system("mkdir #{@app_name}")
    puts "CREATED: #{@app_name} Directory"
    system("cd #{@app_name}")
    system("mv app.rb Gemfile #{@app_name}")
    puts "CREATED: #{@app_name}/app.rb"
    puts "CREATED: #{@app_name}/Gemfile"
    system("mv config.ru README.md #{@app_name}")
    puts "CREATED: #{@app_name}/config.ru"
    puts "CREATED: #{@app_name}/README.md"
    system("mv public #{@app_name}")
    puts "CREATED: #{@app_name}/public"
    system("mv welcome.erb views")
    system("mv views #{@app_name}")
    puts "CREATED: #{@app_name}/views/welcome.erb"
    
end

create_app_name
create_app_file
create_readme
create_gemfile
create_welcome_file
create_config_file
create_views_directory
create_public_directory
create_sinatra_app