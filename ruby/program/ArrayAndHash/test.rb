class CowsBullsGame
  No_OF_CHANCES = 5

  attr_accessor :config_file_path

  def play
    begin
      @word = get_random_word
    rescue => e
      puts e.message and return
    end

    no_of_chances = get_no_of_chances(word) if word.length > 8

    no_of_chances.times do |attempt|
      @user_guessed_word = guess_word

      if match_words?
        puts "you won!!" and break
      else
        puts "No of chances: #{attempt}"
        puts get_cows_and_bulls
      end
    end
  end

  def get_cows_and_bulls
    # return if @word & @user_guessed_word are nil
    # return no of cows and bulls based on how many characters match between word nad user_guessed_word
    # return {cows: 3, bulls: 4}
  end

  def match_words?
    # return if @word & @user_guessed_word are nil
    # if both the words match then return true else false
  end

  def get_no_of_chances(word)
    # based of the word length we need set the no_of_chances
    # set the @no_of_chances
  end

  def guess_word
    # ask for a word
    # return the entered word
  end

  def get_random_word
    # read the configuration file
    # from the words randomly select any word
    # return the selected word

    # errors : 
    # - config file does not exists
    # - file is empty
    # - selected word have a special character
  end
end

a = CowsBullsGame.neiw
a.play






















=begin
  def initialize

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
