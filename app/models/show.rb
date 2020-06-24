class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show 
    rated = Show.find_by(rating: self.highest_rating)
    rated.name
  end
  
  
end