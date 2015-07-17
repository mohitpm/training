require 'minitest/autorun'
require './blog'

describe Blog do
  
  before do
    @blog = Blog.new
  end

  describe "#title" do
    it " returns the title of the blog" do
      @blog.title.must_equal "First post"
    end
  end

end
