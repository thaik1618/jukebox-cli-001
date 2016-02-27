#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => 'audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'audio/Emerald-Park/04.mp3',
 "Wolf" => 'audio/Emerald-Park/05.mp3',
 "Blue" => 'audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands: \n- help : displays this help message \n- list : displays a list of songs you can pay \n- play : lets you choose a song to play \n- exit : exits this program"
end

def list(my_songs)
  my_songs.keys.each do |title|
    puts "#{title}"
  end
end
  
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
def play(my_songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if my_songs.keys.include?(choice)
    system "open #{my_songs[choice]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    else
      exit_jukebox
      break
    end
  end
end

run(my_songs)
