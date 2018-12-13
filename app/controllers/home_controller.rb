class HomeController < ApplicationController

  def index
    @photos = Photo.last_few_records(25)
  end

end
