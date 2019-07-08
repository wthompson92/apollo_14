class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
     @astronauts.each do |astronaut|
      @time_in_space = astronaut.missions.sum(:time_in_space)
    end
    @astronauts_avg = Astronaut.average(:age)
  end
end
