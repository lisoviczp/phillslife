class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  # GET /pictures
  # GET /pictures.json
  def index
    redirect_to root_path
    @pictures = Picture.all.reverse
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
    @picture = Picture.find(params[:id])
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
  end

  # GET /pictures/1/edit
  def edit
  end


  # This was my first ever rails application, and I modified the "Pictures" model to encompass all types of media. 
  # Rather than having 3 separate models for Pictures, Songs, or Videos, I have one Pictures model where you can choose 
  # the "Type" of media it is. 

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = Picture.new(picture_params)

    if @picture.vibeType == "soundcloud" or @picture.vibeType == "2" 
        start= 'content="soundcloud://sounds:'
        i = open(@picture.url).read.index(start)
        @picture.uid = open(@picture.url).read[i+29..i+37] 
    elsif @picture.vibeType == "image" or @picture.vibeType == "1" 
      @picture.uid = @picture.url
    elsif @picture.vibeType == "youtube" or @picture.vibeType == "3" 
      start = 'watch'
      i = @picture.url.index(start)
      pp = @picture.url[i, i+1]
      @picture.uid = pp[8,100]
    end

    respond_to do |format|
      if @picture.save
        format.html { redirect_to root_path, notice: 'Picture was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /pictures/1
  # PATCH/PUT /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to root_path, notice: 'Picture Deleted'
  end

  def approve
    # TODO select pictures that are approved
    # Picture.update_all(['approved=?', true], :id => params[:picture_ids])
    @picture=Picture.find(params[:id])
    @picture.approvePicture
    # @picture.approved=true
    # redirect_to pictures_path    
  end

  def approveThePic 
    @picture=Picture.find(params[:id])
    @picture.approvePictureTrue
    @picture.save
    redirect_to pictures_path   
  end

  def get_last_approve
    @picture=Picture.last 
    redirect_to pic_approve_path(@picture)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_params
      params.require(:picture).permit(:title, :image, :approved, :vibeType, :body, :url, :uid)

    end
end
