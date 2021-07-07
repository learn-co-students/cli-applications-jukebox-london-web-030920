

require "pry"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
 answer =  gets.strip
  if answer.to_i >= 1 && answer.to_i <= songs.length
    puts "Playing #{songs[answer.to_i-1]}"
  elsif songs.include?(answer)
    song = songs.detect{ |song| song == answer}
    puts "Playing #{song}"
  else 
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do | song, index |
  index += 1
  puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs) 
puts "Please enter a command:"
 answer = gets.strip 
  if answer == "exit"
    exit_jukebox 
  elsif answer == "help"
    help
  elsif answer == "list"
    list(songs)
  elsif answer == "play"
    play(songs)
  end
end







