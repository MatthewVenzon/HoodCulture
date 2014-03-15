require 'open-uri'

class ContentController < ApplicationController

  def show
  end

  def home
    @city_list = City.all

  end


  def city
    @city = City.find_by(:name => params[:city_name])
    @city_list = City.where(:name => @city.name)
    @neighborhood_list = Neighborhood.where(:city_id => @city.id).order('name asc')
  end

  def neighborhood
    @neighborhood = Neighborhood.find_by(:name => params[:neighborhood_name])
    @neighborhood_list = Neighborhood.where(:name => @neighborhood.name)
    @listing_list = Listing.where(:neighborhood_id => @neighborhood.id).shuffle

    ## TO SEPARATE BOOKS, MUSIC, AND MOVIES
    # @books = Listing.where(:neighborhood_id => @neighborhood.id, medium_id: Medium.find_by(:format => "Literature").id).shuffle
    # @music = Listing.where(:neighborhood_id => @neighborhood.id, medium_id: Medium.find_by(:format => "Music").id).shuffle
    # @movies = Listing.where(:neighborhood_id => @neighborhood.id, medium_id: Medium.find_by(:format => "Movies").id).shuffle
  end

  def listing

    @listing = Listing.find_by(:id => params[:listing_id])
    @url = URI.escape("https://www.google.com/maps/embed/v1/place?key=AIzaSyAJdKz9ydGsJE3Xvc9sF6pRlFDEOqdhB0g
    &q=#{@listing.street_address},#{@listing.city.name}")

    @comments = Comment.where(:listing_id => @listing.id).order('created_at desc')
    @user = User.find_by(:id => session[:user_id])


  end



end
