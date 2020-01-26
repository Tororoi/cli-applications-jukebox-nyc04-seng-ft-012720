# Add your code here
def run(songs)
  while true do
    puts "Please enter a command:"
    response = gets.chomp
    case response
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if response.to_i >= 1 && response.to_i <= songs.length
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs.include?(response)
    puts "Playing #{songs.find{|song| song == response}}"
  else
    puts "Invalid input, please try again"
  end
end
