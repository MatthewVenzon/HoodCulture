class SavedListing < ActiveRecord::Base

  has_many :user_ids
  has_many :listing_ids
end
