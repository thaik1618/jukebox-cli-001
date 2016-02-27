require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands: \n- help : displays this help message \n- list : displays a list of songs you can pay \n- play : lets you choose a song to play \n- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if songs.include?(choice)
    puts "Playing #{choice}"
  elsif (1..songs.length).to_a.include?(choice.to_i)
    puts "Playing #{songs[choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  case command
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  else
    exit_jukebox
  end
end