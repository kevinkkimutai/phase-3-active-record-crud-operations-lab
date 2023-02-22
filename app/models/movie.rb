class Movie < ActiveRecord::Base

    def self.create_with_title (title)
        self.create(:title => title)
    end

    #fist_movie
    def self.first_movie
        Movie.first
    end

    #last_movie
    def self.last_movie
        Movie.last
    end

    #movie_count
    def self.movie_count
        Movie.count
    end

    #find_movie_with_id
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    #find_movie_with_attributes
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    #find_mivies_After_2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    #update_with_attributes
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    #update_all_titles
    def self.update_all_titles(title)
        Movie.update(:title => title)
    end

    #delete_by_id
    def self.delete_by_id(id)
        Movie.delete(id)
    end

    #delete_all_movies
    def self.delete_all_movies
        Movie.delete_all
    end

end