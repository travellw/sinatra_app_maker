#!/usr/bin/ruby

#create root directory
def create_root_directory
    system("mkdir #{@app_name}")
    puts "CREATED: #{@app_name} Directory"
end

def create_public_directory
    system("cd #{@app_name} && mkdir public")
    puts "CREATED: public Directory" 
end

def create_views_directory
    system("cd #{@app_name} && mkdir views")
    puts "CREATED: views Directory" 
end

def create_readme
    system("cd #{@app_name} && touch README.md")
    puts "CREATED: #{@app_name}/README.md"
end

def create_gemfile
    system("cd #{@app_name} && touch Gemfile")
    puts "CREATED: #{@app_name}/Gemfile" 
end

def create_app_file
    File.open("#{@app_name}/app.rb", "w") { |f| f.write "require 'sinatra'\nget '/' do\nerb :welcome\nend" }
    puts "CREATED: #{@app_name}/app.rb"
end

def create_configfile
    system("cd #{@app_name} && touch config.ru")
    puts "CREATED: #{@app_name}/config.ru"
end

def create_welcome_file
    File.open("#{@app_name}/views/welcome.erb", "w") { |f| f.write '<title> Welcome to Sinatra </title> <img src="https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/newscms/2015_50/889371/frank-sinatra-today-tease-1-151207.jpg" alt="Welcome to Sinatra" width="100%" height="auto">' }
    puts "CREATED: #{@app_name}/views/welcome.erb"
end

user_command = ARGV 

if user_command.length > 2
    p "See sinatra -help for options"
else 
    case user_command[0]
    when "new"
        if user_command[1] == nil
            p "Please try sinatra new [app_name]"
        else 
        @app_name = user_command[1]
        create_root_directory
        create_public_directory
        create_views_directory
        create_readme
        create_gemfile
        create_app_file
        create_configfile
        create_welcome_file
        end
    when "-v"
        p "Sinatra-AppMaker 1.0.0"
    when "-help"
        p "sinatra new APP_NAME  # Creates a new sinatra app"
    else 
        p "See sinatra -help for options"
    end
end
