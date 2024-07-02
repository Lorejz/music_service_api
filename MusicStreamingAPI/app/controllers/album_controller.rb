class AlbumController < ApplicationController
# GET /album
  def index
    @album = Album.includes(:songs).all
    render json: {
      album: @album,
    }, status: :ok
  end

# GET /album/1
  def show
    @album = Album.find(params[:id])
    render json: {
      album: @album,
      artists: @album.artists
    }, status: :ok
  end

  def set_album
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(album_params)

    # Asociar automáticamente los artistas de las canciones al álbum
    if @album.save
      render json: @album, status: :created
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  def album_params
    params.require(:album).permit(:name, :year, :total_duration, :cached_songs, songs_attributes: [:id, :name, :artist_id])
  end

end
