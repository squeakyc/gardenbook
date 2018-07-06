class WelcomeController < ApplicationController
  def index
    @gardens = Garden.all
    @plants = Plant.all
    @tasks = Task.all
  end
end
