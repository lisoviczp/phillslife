class HomeController < ApplicationController
  def index
  	@pictures = Picture.paginate(:page => params[:page], :per_page => 16)
  end
end
