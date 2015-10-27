require 'pry'
require_relative('calculator.rb')

class Server < Sinatra::Base
   # add css
   set :public_folder, './public'

   # redirect to welcome
   get "/" do
      redirect to('/calc')
   end

   # welcome screen
   get "/calc" do
      @welcome = "<p>Enter 2 numbers above after your chosen operator, like so:</p>"
      @welcome << "<p>\"/calc/operator/<span class=\"a\">num1</span>/<span class=\"b\">num2</span>\"</p>"
      @output = "#{@welcome}"
      # add html
      erb :layout
   end

   # use the Calculator object
   get "/calc/:op/:num1/:num2" do
      # get 2 number
      @num1 = params['num1']
      @num2 = params['num2']
      # get operators
      @op = params['op'].downcase
      # use calculator
      @calc = Calculator.new(@num1,@num2)
      @output = "#{@calc.method(@op).call}"
      # add html
      erb :layout
   end
end
