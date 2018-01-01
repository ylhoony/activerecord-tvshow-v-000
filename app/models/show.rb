class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    Show.order(rating: :desc).limit(1)[0]
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    Show.order(rating: :asc).limit(1)[0]
  end

  def self.ratings_sum

  end


end
