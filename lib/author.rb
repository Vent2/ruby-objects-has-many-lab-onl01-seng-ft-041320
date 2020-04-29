class Author
  attr_accessor :name, :post, :title

  def initialize(name)
    @name= name
  end

  def posts
    Post.all.select {|post| post.artist == self}
  end

  def add_post(post)
    Post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(post)
  end

  def self.post_count
    Post.all.count {|post| post.name}
  end
end
