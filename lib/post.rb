class Post
  attr_accessor :name, :author, :title
  @@all = []

  def initialize(name)
    @name= name
    @@all << self
  end

  def title(t)
    @title = t
  end

  def self.all
    @@all
  end

  def author_name
    if self.author == nil
       nil
    else
      self.author.name
    end
  end
end
