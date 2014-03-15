class FavoritesController < ApplicationController

def new
end

def create

    session[:return_to] = request.referer

    favorite = Favorite.new
    favorite.user_id = session[:user_id]
    favorite.listing_id = params[:listing_id]
    favorite.save

    redirect_to session.delete(:return_to), notice: "This listing has been added to your Favorites"
end

def show
    @favorites = Favorite.find_by(:user_id => session[:user_id])
    @favorites_list = Listing.where(:id => @favorites.listing_id)

end

end

