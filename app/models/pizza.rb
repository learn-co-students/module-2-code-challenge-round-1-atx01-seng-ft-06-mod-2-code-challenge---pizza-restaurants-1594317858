class Pizza < ApplicationRecord
has_many :restaurantpizzas
has_many :restaurants, through: :restaurantpizzas

validates :name, presence: true
validates :ingredients, presence: true
validates :name, uniqueness: true 


def count_of_restaurants
    binding.pry
end
