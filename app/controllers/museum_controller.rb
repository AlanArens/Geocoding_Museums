class MuseumController < ApplicationController


  def index 

    @museums = Museum.all

    @locations = @museums.geocoded.map do |museum|
      {
        lat: museum.latitude,
        lng: museum.longitude,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat })
        image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end 
end
