class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @restaurant_pizza = RestaurantPizza.new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
 end

 def create
  @pizza = Pizza.create(pizza_params)
  @restaurants = Restaurant.all
  @restaurant_pizza =RestaurantPizza.create(pizza_id: @pizza.id,restaurant_id: :restaurant_ids)
  

  if @pizza.valid?
    @pizza.save
    redirect_to pizza_path(@pizza.id)
  else
    @error = @pizza.errors.full_messages
    render 'new'
  end
 end

private
 def pizza_params
  params.require(:pizza).permit(:pizza_id, :name, :ingredients, :restaurant_ids,)
  end
end

