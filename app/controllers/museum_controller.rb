class MuseumController < ApplicationController
  


  def index 

    @museums = Museum.all

    @locations = @museums.geocoded.map do |museum|
      {
        lat: museum.latitude,
        lng: museum.longitude,
        info_window: render_to_string(partial: "info_window", locals: { museum: museum })
        
      }
    end
  end 
end
