require 'Unirest'
require 'pp'

p "Welcome to the flower's shop!"

p "[1] to see all of my flowers!"
p "[2] to see a particular flower."
p "[3] create a new flower option."
p "[4] update a flower option"


user_input = gets.chomp

if user_input == '1'
  p "Look at my flowers!"
  response = Unirest.get("localhost:3000/flowers")
  flowers = response.body
  pp response.body
elsif user_input == '2'
  p "Enter an id to see a particular flower."
  flower_id = gets.chomp
  response = Unirest.get("localhost:3000/flowers/#{flower_id}")
  pp response.body
elsif user_input == '3'
  the_params = {}
  p "Enter the name"
  the_params[:name] = gets.chomp
  p "Enter the color"
  the_params[:color] = gets.chomp
  p "Enter the price"
  the_params[:price] = gets.chomp.to_i
  response  = Unirest.post("localhost:3000/flowers", parameters: the_params)
  pp response.body
elsif user_input == '4'
  the_params = {}
  p "Enter the id of the flower you would like to update."
  flower_id = gets.chomp
  p "Enter the name of the flower."
  the_params[:name] = gets.chomp
  p "Enter the color of the of flower"
  the_params[:color] = gets.chomp
  p "Enter the price of the flower"
  the_params[:price] = gets.chomp
  response = Unirest.patch("localhost:3000/flowers/#{flower_id}", parameters: the_params)
  pp response.body
end