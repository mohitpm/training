class InvalidGuessWordError < StandardError
end
class CowsBullsGame

  attr_accessor :nos_of_chances
  attr_reader :avail_words

  def initialize
    INIT_FILE_PATH = ".words.txt"
    @nos_of_chances = 5 
    @avail_words = ["four", "cat"]
    @orignal_word = @avail_words.sample
    @attempt_info = {}
  end
  
  def self.get_guess_word
    guess_word = gets.strip.downcase
    raise InvalidGuessWordError,"Invalid Guess Word" if guess_word =~ /[^a-zA-Z]/
    return guess_word
  end

  def play
    
    puts "You have #{@nos_of_chances} chances to guess correct word"
    puts "Word length is :- #{@orignal_word.length}"

    (1..@nos_of_chances).each do |current_chance|
      cows,bulls = 0, 0
      print "\nChances left #{@nos_of_chances - current_chance + 1} ,Guess word :-"
      
      begin
        guess_word = CowsBullsGame.get_guess_word
      rescue InvalidGuessWordError => e
        print e
        next
      end
      print "Guess Word #{guess_word}"
      if guess_word == @orignal_word
        puts "Congratulation you win!!!"
        @attempt_info[current_chance] = {cows: 0, bulls: guess_word.length, guess_word: guess_word}
        break
      end

      guess_word.each_char.with_index do | char, index|
        if @orignal_word.include?(char)
          (@orignal_word[index] == char) ? bulls += 1 : cows += 1
        end
      end

      @attempt_info[current_chance] = {cows: cows, bulls: bulls, guess_word: guess_word}
      print "#{cows} cows, #{bulls} bulls"
    end
  end
  
  def print_history
    puts "----- History -----"
    @attempt_info.each do | chance, info |
      puts " #{chance} Guess word #{info[:guess_word]} #{info[:cows]} cows, #{info[:bulls]} bulls"
    end
  end

end
begin
  cows_and_bulls = CowsBullsGame.new
  cows_and_bulls.play
  cows_and_bulls.print_history
  puts "Do you want to continue? (y/n)"
  choice = gets.strip.chars[0].downcase
end while(choice == "y")
