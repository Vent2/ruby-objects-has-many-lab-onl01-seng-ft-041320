class Post
  attr_accessor :name, :author, :title
  @@all = []

  def initialize(name, title)
    @name= name
    @title = title
    @@all << self
  end

  # def title(title)
  #   @title = title
  # end

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
