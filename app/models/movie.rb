class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    #  instantiates a movie with a given title, and saves it to the database
    # use Movie.new to initialize a movie
    # movie = Movie.new(title: title)
    # # use movie.save to add to db
    # movie.save
    # # return movie
    # movie
    Movie.create(title: title)
  end

  def self.first_movie
    p self
    first # self refers to Movie class as a a whole
  end

  def self.last_movie
    last # self refers to Movie class as a a whole
  end

  def self.movie_count
    count # self refers to Movie class as a a whole
  end

  def self.find_movie_with_id(id)
    find(id) # self refers to Movie class as a a whole
  end

  def self.find_movie_with_attributes(attributes)
    find_by(attributes) # self refers to Movie class as a a whole
  end

  def self.find_movies_after_2002
    self.where('release_date > 2002') # self refers to Movie class as a a whole
    # self.all.filter{|movie| movie.release_date > 2002}
  end

  def update_with_attributes(attr)
    self.update(attr)
  end

  def self.update_all_titles(title)
    # self.all.each do |movie|
    #     movie.update(title: title)
    # end
    Movie.update(title: title)
  end

  def self.delete_by_id(id)
    movie = self.find(id)
    movie.destroy
  end

  def self.delete_all_movies
    self.destroy_all
  end
  #   def p_title
  #     p self.title # self refers to an instance of a movie
  #   end
end
