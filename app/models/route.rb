class Route < ActiveRecord::Base
  
  def Route.getDistance(from, to)
    where(:from => from, :to => to).first.distance
  end
  
  def Route.getDistanceForRoute(route)
    waypoints = route.split('-')
    distanceTotal = 0
    distanceWaypoint = 0;
    i = 0
    until i == waypoints.length-1
      
      distanceWaypoint = getDistance(waypoints[i], waypoints[i+1])
      if(distanceWaypoint != nil)
        distanceTotal += distanceWaypoint
      end
      i += 1
    end
    distanceTotal
  end
  
end
