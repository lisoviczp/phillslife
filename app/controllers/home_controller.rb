class HomeController < ApplicationController
  def index
  	@pictures = Picture.paginate(:page => params[:page], :per_page => 12)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
