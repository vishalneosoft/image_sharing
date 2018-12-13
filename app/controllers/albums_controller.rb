class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.paginate(:page => params[:page], :per_page => 6)
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @photos = @album.photos
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to albums_path, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_path, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def my_albums
    @my_albums = current_user.albums.paginate(:page => params[:page], :per_page => 6)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:name, :owner_id)
    end
end
