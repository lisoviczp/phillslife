class AboutController < ApplicationController
  def index
  	
  end

  def show
	send_file(Rails.root.join("app", "assets", "images", "PLResume.PDF").to_s, :disposition => "inline", :type => "application/pdf")
  end


end
