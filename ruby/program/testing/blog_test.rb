require 'minitest/autorun'
require './blog'

class TestBlog < Minitest::Test
  
  def setup
    @blog = Blog.new
  end

  def test_title_is_first_post
    assert_equal "First Post",@blog.title
  end

  def test_caption_is_my_first_caption
    assert_equal "My first caption",@blog.caption
  end

end
