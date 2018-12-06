require 'sinatra'
require 'action_mailer'
require './send.rb'
require_relative 'class.rb'


require 'sinatra/base'

@tea = []

get '/' do
    erb :index, layout: :layout_home
end

get '/catering' do
    erb :catering, layout: :layout_home
end

get '/cakes' do
    @cakes_1 = Cake.new("Pretzel", "/photos/cakes/pretzel.jpg", "$3", "Salty and sweet, the best of both worlds.")
    @cakes_2 = Cake.new("Peanut Butter Swirl", "/photos/cakes/peanut.jpg", "$3", "Rich and Decadant, sugar free peanut butter mixed with dark chocolate.")
    @cakes_3 = Cake.new("Fruit Tart", "/photos/cakes/fruit.jpg", "$3", "A small handheld french pasty of sublime decadance.")
    @cakes_4 = Cake.new("Strawberry Short Cake", "/photos/cakes/strawberry.jpg", "$3", "Bright and fresh for a summer evening.")
    @cakes_5 = Cake.new("Cherry Chocolate Chip", "/photos/cakes/Chocolate-Chip-Cherry.jpg", "$3", "Robust, sweet, and sour. Tart cherries paired with our darkest chocolate.")
    @cakes_6 = Cake.new("Caipirinha", "/photos/cakes/caipirinha.jpg", "$3", "Brazillian flavor of lime and cocounut.")
    @cakes = [@cakes_1, @cakes_2, @cakes_3, @cakes_4, @cakes_5, @cakes_6]
erb :cakes
end

get '/cookies' do
    @cookie_1 = Cookie.new("Macaron", "/photos/cookies/macaroon.jpeg", "$4", "Etherial merenge and almond based cookies with lucious jam filling.")
    @cookie_2 = Cookie.new("Linzer Tart", "/photos/cookies/linzar.jpeg", "$3", "Crisp cookies with tart jam  and powdered sugar.")
    @cookie_3 = Cookie.new("Chocolate Chip", "/photos/cookies/chochochip.jpeg", "$2", "Classic cookies fresh from your mom's kitchen.")
    @cookie_4 = Cookie.new("Chocolate Macaroon", "/photos/cookies/chocomac.jpeg", "$4", "Coconut cookies dunked in chocolate and topped with shredded coconut.")
    @cookie_5 = Cookie.new("Lemon Curd", "/photos/cookies/lemoncurd.jpg", "$3", "Sweet and sour creamy filling in a simple cookie.")
    @cookie_6 = Cookie.new("Peanut Butter Chocolate Mousse", "/photos/cookies/peanut.jpg", "$3", "Fluffy and decadent cookie with all the good stuff.")
    @cookie_7 = Cookie.new("Double Chocolate", "/photos/cookies/fudge.jpeg", "$3", "2X the chocolate!")
    @cookies = [@cookie_1, @cookie_2, @cookie_3, @cookie_4, @cookie_5, @cookie_6, @cookie_7]
erb :cookies
end

get '/muffins' do
    @muffin_2 = Muffin.new("Corn Muffin", "/photos/muffins/corn.jpg", "$3", "Our clasic homestyle cornbread muffin.")
    @muffin_1 = Muffin.new("Cherry Muffin", "/photos/muffins/cherry.jpg", "$3", "Tart and sweet, perfect for a less sweeet breakfast.")
    @muffin_3 = Muffin.new("Blueberry Muffin", "/photos/muffins/blueberry.jpg", "$3", "Packed with antioxidants, blueberries have been shown to increase neurogenisis.")
    @muffin_4 = Muffin.new("Red Currant Muffin", "/photos/muffins/redcurrant.jpg", "$3", "Fresh winter berries bring this muffin to the top of our customer's requests.")
    @muffin_5 = Muffin.new("Lemon Poppy Muffin", "/photos/muffins/lemon.jpg", "$3", "Bright and nutty, a chef favorite.")
    @muffin_6 = Muffin.new("Blackberry Muffin", "/photos/muffins/blueberry.jpg", "$3", "Everyone's favorite segmented berry...")
    @muffins = [@muffin_1, @muffin_2, @muffin_3, @muffin_4, @muffin_5, @muffin_6]
erb :muffins
end

get '/contact' do
    erb :contact
end

get '/bread' do
    @bread_1 = Bread.new("Sourdough", "/photos/bread/sour.jpg", "$5", "Lacto-fermented and naturally leavened.")
    @bread_2 = Bread.new("Poppy Chalka", "/photos/bread/chalka.jpg", "$7", "Polish braided bread with poppy seeds.")
    @bread_3 = Bread.new("Fresh Rolls", "/photos/bread/fresh.jpg", "$1", "Baked fresh every morning.")
    @bread = [@bread_1, @bread_2, @bread_3]
    erb :bread
end

get '/tea' do
    @tea_1 = Tea.new("Green Tea", "/photos/tea/green.jpg", "$5", "Naturally leavened.")
    @tea_2 = Tea.new("Black Tea", "/photos/tea/black.jpg", "$7", "Stronger black tea.")
    @tea_3 = Tea.new("Herbal Tea", "/photos/tea/herbal.jpg", "$1", "Fresh every morning.")
    @tea = [@tea_1, @tea_2, @tea_3]
    erb :tea
end

get '/all' do
    @cakes_1 = Cake.new("Pretzel", "/photos/cakes/pretzel.jpg", "$3", "Salty and sweet, the best of both worlds.")
    @cakes_2 = Cake.new("Peanut Butter Swirl", "/photos/cakes/peanut.jpg", "$3", "Rich and Decadant, sugar free peanut butter mixed with dark chocolate.")
    @cakes_3 = Cake.new("Fruit Tart", "/photos/cakes/fruit.jpg", "$3", "A small handheld french pasty of sublime decadance.")
    @cakes_4 = Cake.new("Strawberry Short Cake", "/photos/cakes/strawberry.jpg", "$3", "Bright and fresh for a summer evening.")
    @cakes_5 = Cake.new("Cherry Chocolate Chip", "/photos/cakes/Chocolate-Chip-Cherry.jpg", "$3", "Robust, sweet, and sour. Tart cherries paired with our darkest chocolate.")
    @cakes_6 = Cake.new("Caipirinha", "/photos/cakes/caipirinha.jpg", "$3", "Brazillian flavor of lime and cocounut.")
    @cookie_1 = Cookie.new("Macaron", "/photos/cookies/macaroon.jpeg", "$4", "Etherial merenge and almond based cookies with lucious jam filling.")
    @cookie_2 = Cookie.new("Linzer Tart", "/photos/cookies/linzar.jpeg", "$3", "Crisp cookies with tart jam  and powdered sugar.")
    @cookie_3 = Cookie.new("Chocolate Chip", "/photos/cookies/chochochip.jpeg", "$2", "Classic cookies fresh from your mom's kitchen.")
    @cookie_4 = Cookie.new("Chocolate Macaroon", "/photos/cookies/chocomac.jpeg", "$4", "Coconut cookies dunked in chocolate and topped with shredded coconut.")
    @cookie_5 = Cookie.new("Lemon Curd", "/photos/cookies/lemoncurd.jpg", "$3", "Sweet and sour creamy filling in a simple cookie.")
    @cookie_6 = Cookie.new("Peanut Butter Chocolate Mousse", "/photos/cookies/peanut.jpg", "$3", "Fluffy and decadent cookie with all the good stuff.")
    @cookie_7 = Cookie.new("Double Chocolate", "/photos/cookies/fudge.jpeg", "$3", "2X the chocolate!")
    @muffin_2 = Muffin.new("Corn Muffin", "/photos/muffins/corn.jpg", "$3", "Our clasic homestyle cornbread muffin.")
    @muffin_1 = Muffin.new("Cherry Muffin", "/photos/muffins/cherry.jpg", "$3", "Tart and sweet, perfect for a less sweeet breakfast.")
    @muffin_3 = Muffin.new("Blueberry Muffin", "/photos/muffins/blueberry.jpg", "$3", "Packed with antioxidants, blueberries have been shown to increase neurogenisis.")
    @muffin_4 = Muffin.new("Red Currant Muffin", "/photos/muffins/redcurrant.jpg", "$3", "Fresh winter berries bring this muffin to the top of our customer's requests.")
    @muffin_5 = Muffin.new("Lemon Poppy Muffin", "/photos/muffins/lemon.jpg", "$3", "Bright and nutty, a chef favorite.")
    @muffin_6 = Muffin.new("Blackberry Muffin", "/photos/muffins/blueberry.jpg", "$3", "Everyone's favorite segmented berry...")
    @bread_1 = Bread.new("Sourdough", "/photos/bread/sour.jpg", "$5", "Lacto-fermented and naturally leavened.")
    @bread_2 = Bread.new("Poppy Chalka", "/photos/bread/chalka.jpg", "$7", "Polish braided bread with poppy seeds.")
    @bread_3 = Bread.new("Fresh Rolls", "/photos/bread/fresh.jpg", "$1", "Baked fresh every morning.")
    @tea_1 = Tea.new("Green Tea", "/photos/tea/green.jpg", "$5", "Naturally leavened.")
    @tea_2 = Tea.new("Black Tea", "/photos/tea/black.jpg", "$7", "Stronger black tea.")
    @tea_3 = Tea.new("Herbal Tea", "/photos/tea/herbal.jpg", "$1", "Fresh every morning.")

    @all = [@tea_1, @tea_2, @tea_3,@bread_1, @bread_2, @bread_3,@muffin_1, @muffin_2, @muffin_3, @muffin_4, @muffin_5, @muffin_6,@cookie_1, @cookie_2, @cookie_3, @cookie_4, @cookie_5, @cookie_6, @cookie_7,@cakes_1, @cakes_2, @cakes_3, @cakes_4, @cakes_5, @cakes_6]
erb :all
end

post '/contact' do
  email = params["email"]
  Newsletter.welcome(email).deliver_now
  erb :email_sent
end

get '/catering' do

erb :catering_sent
end
