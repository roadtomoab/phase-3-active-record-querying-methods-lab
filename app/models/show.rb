class Show < ActiveRecord::Base 

    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show 
        s = Show.maximum(:rating)
        return s.name
    end
end