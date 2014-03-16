class Favorite < ActiveRecord::Base

  has_many :listing_ids
  has_many :user_ids
end
