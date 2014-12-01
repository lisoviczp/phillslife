class AboutController < ApplicationController
  def index
  	
  end

  def show
	send_file(Rails.root.join("app", "assets", "images", "PLResumeOct2014.pdf").to_s, :disposition => "inline", :type => "application/pdf")
  end

  def resumepdf
    send_file(Rails.root.join("public", "assets", "PLResumeOct2014.pdf").to_s, :disposition => "inline", :type => "application/pdf")
  end


end
