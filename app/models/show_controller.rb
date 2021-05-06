class Show < ActiveRecord::Base

    def self.highest_rating
        Show.all.maximum(:rating)
    end
    def self.most_popular_show
        Show.all.order(rating: :desc).limit(1)[0]
    end
    def self.lowest_rating
        Show.all.minimum(:rating)
    end
    def self.least_popular_show
        Show.all.order(:rating).limit(1)[0]
    end

    def self.popular_shows
        Show.all.having("SUM(shows.rating) > 5").group(:rating).order(rating: :desc).map { | d | d }
    end

    def self.ratings_sum
        Show.all.sum(:rating)
    end
    def self.shows_by_alphabetical_order
        Show.all.order(:name).map {|m|m}
    end
end