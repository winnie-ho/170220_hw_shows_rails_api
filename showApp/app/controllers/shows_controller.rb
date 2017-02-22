class ShowsController < ApplicationController

  before_action :authenticate_user!

  def shows_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeID])
  end

  def index
    shows = current_user.favourites
    render ({json: shows})
  end

  def create
    show = Show.create(shows_params)
    render({json: show})
  end
end