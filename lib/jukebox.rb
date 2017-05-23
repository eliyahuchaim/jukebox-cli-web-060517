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
  puts "I accepts the following commands
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def play(song_array)

   puts "Please enter a song name or number"

 user_input = gets.chomp


 if user_input.to_i >= 10
   puts "Invalid input, please try again"
 elsif song_array.index(user_input)
   puts "Playing #{user_input}"
 elsif user_input.to_i != 0
   num = user_input.to_i-1
   song_array.include?(song_array[num])
   puts "Playing #{song_array[num]}"
 else
   puts "Invalid input, please try again"
end
end


def list(array)


array.each_with_index do |song, index|
  puts "#{index+1}. #{song}"

end
end


def exit_jukebox

  puts "Goodbye"

end

def run(songs)

help

puts "Please enter a command:"

loop do

  user_input = gets.chomp

  case user_input

  when "play"
    play(songs)
  when "help"
    help
  when "list"
    list
  when "exit"
    exit_jukebox
    break
end
end
end
