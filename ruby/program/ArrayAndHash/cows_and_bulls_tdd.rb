class ConfigError < Exception 
end

class CowsBullsGame
  

  attr_accessor :config_file_path, :nos_of_chances, :word, :words, :is_winner

  def initialize(nos_of_chances:5, config_file_path:".words.config")

    @nos_of_chances = nos_of_chances
    @config_file_path = config_file_path
    @left_chances = @nos_of_chances
    @words = get_words
    @word = @words.sample.downcase
    @is_winner = false

  end

  def get_words
    words = []
    raise ConfigError,"Config file not found" unless File.exists?(@config_file_path)
    raise ConfigError,"Empty config file" if File.zero?(@config_file_path)
    File.readlines(@config_file_path).each do |line|
      words << line.strip! if line =~ /^[a-zA-Z]+$/
    end
    raise ConfigError,"Words not found" if words.empty?
    words
  end

  def get_guess_word
    print "Guess Word :- "
    guess_word = gets.strip.downcase
  end

  def get_cows_bulls(guess_word)
    cows, bulls = 0, 0
    word = @word.downcase
    guess_word = guess_word.downcase
    guess_word.each_char.each_with_index do | guess_char, index|
      if word.include?(guess_char)
        (word[index] == guess_char) ? bulls += 1 : cows += 1
      end
    end
    return [cows, bulls]
  end
  
  def get_random_word
  end

  def play
    get_random_word rescue "Word not found" and return
     
    @is_winner  = false
    puts "Word Length #{word.length}"
    (0..@nos_of_chances).each do |current_chance|
      @left_chances = @nos_of_chances - current_chance + 1

      print "Chances left #{@left_chances} "

      guess_word = get_guess_word

      if @word == guess_word
        @is_winner = true
        return
      end

      res = get_cows_bulls(guess_word)
      
      cows, bulls = res[0], res[1]
      print " #{cows} cows, #{bulls} bulls "
    end
  end

end
=begin
begin

  system("clear")
  cows_and_bulls = CowsBullsGame.new
  cows_and_bulls.play
  msg = (cows_and_bulls.is_winner) ? "Congratulation you Win!!!" : "You Loose!!! actual word #{cows_and_bulls.word} "
  puts msg
  print "Do you want to continue? (y/n)"
  choice = gets.strip.chars[0].downcase
  
end while(choice == 'y')
=end
