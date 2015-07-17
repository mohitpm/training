require 'minitest/autorun'
require './cows_and_bulls_tdd'

class ConfigFileTest < MiniTest::Test
  
  
  def test_if_config_file_exists
    cows_bulls_game = CowsBullsGame.new
    assert_equal(false, cows_bulls_game.words.empty?)
  end

  def test_if_config_file_does_not_exists
    assert_raises ConfigError do
      CowsBullsGame.new(config_file_path:"dummy.txt")
    end
  end
  def test_if_config_file_is_empty
    assert_raises ConfigError do
      CowsBullsGame.new(config_file_path:"empty.txt")
    end
  end

  def test_if_words_found
    assert_raises ConfigError do
      CowsBullsGame.new(config_file_path:"file_with_invalid_word.txt")
    end
  end

end

class CowsBullsTest < MiniTest::Test
  def setup
    @player = CowsBullsGame.new
  end
  def test_count_of_cows_bulls
    @player.word = "mohit"
    guess_word = "tihom"
    assert_equal([4, 1], @player.get_cows_bulls(guess_word))
  end
  def test_count_of_cows_bulls_if_case_insensitive

  end
  def test_count_of_cows_bulls_if_guess_word_is_empty
    @player.word = ""
    guess_word = ""
    assert_equal([0, 0], @player.get_cows_bulls(guess_word))
  end
  
  def test_count_of_cows_bulls_when_case_not_same
    @player.word ="Mohit"
    guess_word = "mohit"
    assert_equal([0, 5], @player.get_cows_bulls(guess_word))
  end

end
class PlayGameTest < MiniTest::Test
  
  def setup
    @player = CowsBullsGame.new
  end
  
  def test_winning_the_game
    def @player.get_guess_word
      "four"
    end
    assert_equal("four",@player.get_guess_word)
  end

  def test_loosing_game
  end

end
=begin
class GameHistory < MiniTest::Test

  def test_history_valid
  end

end
=end
