class Listing < ActiveRecord::Base


  belongs_to :neighborhood
  belongs_to :city
  belongs_to :medium

end
