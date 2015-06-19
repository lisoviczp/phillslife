class SongsController < ApplicationController
  def index
    @song = Picture.where(vibeType: "2")
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
