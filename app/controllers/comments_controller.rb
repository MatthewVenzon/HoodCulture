class CommentsController < ApplicationController

  def new
     @listing = Listing.find_by(:id => params[:listing_id])
  end

  def create

    @listing = Listing.find_by(:id => params[:listing_id])
    comment = Comment.new
    comment.body = params[:body]
    comment.listing_id = params[:listing_id]
    comment.user_id = session[:user_id]
    comment.save
    redirect_to URI.escape("/#{@listing.city.name}/#{@listing.neighborhood.name}/#{@listing.id}")
  end

end
