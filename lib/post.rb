class Post
  attr_accessor :name
  attr_reader :author
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def author= (author)
    @author = author
    @author.posts << self
  end
  
  def author_name
    @author.name if !!@author
  end
end