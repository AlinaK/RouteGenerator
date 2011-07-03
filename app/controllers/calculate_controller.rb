class CalculateController < ApplicationController
  def calculate
    @distance = Route.getDistanceForRoute(params[:route])
    flash[:notice] = "Die Distanz fuer "+params[:route]+" betraegt "+@distance
    
    
  end
end
