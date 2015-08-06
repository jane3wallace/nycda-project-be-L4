# Back End 101 July 2015, Week 2 Lecture 2 Homework
# https://gist.github.com/kareemgrant/f2c5bb12073c0282473b

# Take a personal website project and convert it to
# a Ruby / Sinatra site. The site should have at
# least 3 sections and one of the pages should have
# a "Contact Me" form that allows users to submit a
# post request to your app.
require "sinatra"

get "/" do
  erb :home
end

get "/snaps" do
  erb :snaps
end

get "/contact" do
  erb :contact
end

post "/email-received" do
  @email = params[:email]
  puts @email.inspect
  puts "my contact form params are" + params.inspect
  erb :success
end