class AnimalsController < ApplicationController

  def new
    @animals = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
  end

  private
    def animal_params
      params.require(:animal).permit(:type, :name)
    end
end
