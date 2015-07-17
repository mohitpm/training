class InvalidGuessWord < StandardError
end
avail_words = ["four","cat"]
begin
  system("clear")
  orignal_word = avail_words.sample
  attempt_info = {}
  nos_of_chances = 5 
  puts "You have #{nos_of_chances} chances to guess correct word"
  puts "Word length is :- #{orignal_word.length}"

  (1..5).each do |current_chance|
    cows,bulls = 0, 0
    print "\nChances left #{nos_of_chances - current_chance + 1} ,Guess word :-"
    guess_word = gets.strip.downcase
    if guess_word == orignal_word
      puts "Congratulation you win!!!"
      attempt_info[current_chance] = {cows: 0, bulls: guess_word.length, guess_word: guess_word}
      break
    end

    guess_word.each_char.with_index do | char, index|
      if orignal_word.include?(char)
        (orignal_word[index] == char) ? bulls += 1 : cows += 1
      end
    end
   
    attempt_info[current_chance] = {cows: cows, bulls: bulls, guess_word: guess_word}
    print "#{cows} cows, #{bulls} bulls"
 end

  puts "----- History -----"
  attempt_info.each do | chance, info |
    puts " #{chance} Guess word #{info[:guess_word]} #{info[:cows]} cows, #{info[:bulls]} bulls"
  end

  puts "Do you want to continue? (y/n)"
  choice = gets.strip.chars[0].downcase
end while(choice == "y")
