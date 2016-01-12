class SongsController < ApplicationController
  
  # This was my first ever rails application, and I modified the "Pictures" model to encompass all types of media. 
  # Rather than having 3 separate models for Pictures, Songs, or Videos, I have one Pictures model where you can choose 
  # the "Type" of media it is. 

  def index
    @song = Picture.where(vibeType: ["2", "soundcloud"])
    # pry
  end

  def show
    @song = Picture.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
 
    if @song.update(song_params)
      redirect_to @song
    else
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to root_path, notice: 'Song Deleted'
  end

private

  def song_params
    params.require(:song).permit(:url, :type)
  end



end
