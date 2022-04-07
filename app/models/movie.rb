class Movie < ActiveRecord::Base
  # has_many :reviews
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
    self.first # self refers to Movie class as a a whole
  end

  def self.last_movie
    self.last # self refers to Movie class as a a whole
  end

  def self.movie_count
    self.count # self refers to Movie class as a a whole
  end

  def self.find_movie_with_id(id)
    self.find(id) # self refers to Movie class as a a whole
  end

  def self.find_movie_with_attributes(attributes)
    self.find_by(attributes) # self refers to Movie class as a a whole
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
    self.update(title: title)
  end

  def self.delete_by_id(id)
    movie = find(id)
    movie.destroy
  end

  def self.delete_all_movies
    self.destroy_all
  end

  # define a method that gives us a list of all movie titles

  def self.title_list
    Movie.pluck(:title)
    # Movie.all.map {|movie| movie.title}
  end
  #   def p_title
  #     p self.title # self refers to an instance of a movie
  #   end
end
