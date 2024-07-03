class SongsController < ApplicationController
  # POST /songs
  def create
    @song = Song.new(song_params)

    # Crear un nuevo artista si se proporcionan parámetros de artista
    if artist_params.present?
      @artist = Artist.new(artist_params)
      if @artist.save
        @song.artists << @artist
      else
        render json: @artist.errors, status: :unprocessable_entity and return
      end
    end

    if @song.save
      #@song.albums << Album.where(id: song_params[:album_ids]) if song_params[:album_ids].present?
      #@song.artists << Artist.where(id: song_params[:artist_ids]) if song_params[:artist_ids].present?
      render json: @song, include: [:artists, :albums], status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  private

  def song_params
    params.require(:song).permit(
      :name,
      :duration,
      :streams,
      :category_id,
      album_ids: [],
      artist_ids: []
    )
  end

  def artist_params
    params.require(:artist).permit(:name, :biography) if params[:artist].present?
  end
end
