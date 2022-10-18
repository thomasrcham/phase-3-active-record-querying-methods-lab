class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.find_by(rating: Show.maximum(:rating))
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by(rating: Show.minimum(:rating))
  end

  def self.ratings_sum
    Show.all.map { |s| s.rating }.sum
  end

  def self.popular_shows
    Show.all.filter { |s| s.rating > 5 }
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end
end
