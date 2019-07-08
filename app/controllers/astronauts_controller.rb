class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
    @astronauts_avg = Astronaut.average(:age) 

  end
end
