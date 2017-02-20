class ShowsController < ApplicationController

  def shows_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeID])
  end

  def index
    shows = Show.all()
    render ({json: shows})
  end

  def create
    show = Show.create(shows_params)
    render({json: show})
  end
end