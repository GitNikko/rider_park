class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.lat
      marker.lng location.lng
      marker.infowindow render_to_string( partial: "/locations/infowindow")
    end
  end
end
