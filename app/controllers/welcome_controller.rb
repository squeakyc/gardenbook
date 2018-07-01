class WelcomeController < ApplicationController
  def index
    @gardens = Garden.all
    @plants = Plant.all
  end
end
