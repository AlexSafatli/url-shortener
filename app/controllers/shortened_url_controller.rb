class ShortenedUrlController < ApplicationController

  def new
    @url = ShortenedUrl.new
  end

  def create
    @url = ShortenedUrl.create params[:url]
    if @url.errors.any?
      render nothing: true, status: 400
    else
      respond_to do |f|
        f.js
        f.json { return { id: @url.id } }
      end
    end
  end

  def show
    @url = ShortenedUrl.find_by id: params[:id]
    if @url
      @url.update(visits: @url.visits + 1)
      redirect_to @url.original_url
    else
      render nothing: true, status: 404
    end
  end

end
