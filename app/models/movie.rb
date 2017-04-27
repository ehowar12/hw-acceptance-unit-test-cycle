class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_movie_with_same_director(id)
    movies = self.find(id)
    if movie.director.empty?   
      return [movie, [], true]
    else
      movies = self.where(:director => movie.director)
      return [movie, movies, false]
    end
  end
end
