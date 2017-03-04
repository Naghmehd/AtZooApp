class HomeController < ApplicationController
  def index
    @zoo          = Zoo.first
    @cages        = @zoo.cages.all
    @free_animals = Animal.free.all
  end

  def create
    @zoo          = Zoo.first
    @cages        = @zoo.cages.all
    @free_animals = Animal.free.all

    keeper = SmartZooKeeper.new

    @free_animals.each do |animal|
      keeper.(@cages, animal)
    end

    redirect_to root_path
  end
end
