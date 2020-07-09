class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
  @pizza = Pizza.find(params[:id])
  end

  def new
  @pizza = Pizza.new
  end

  def create
  @pizza = Pizza.new(pizza_params)
  
redirect_to pizza_path(@pizza)
end

  private

  def pizza_params
    params.require(:heroine).permit(:name,:ingredients,:restaurant_ids)
  end


  

end
