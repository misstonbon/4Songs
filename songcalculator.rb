puts "Hello and welcome! I am Tanja's song calculator!\n
I will analyze four songs of your choice. Please follow the prompts carefully.\n\n
Let's get started!\n\n"

songs = []
grand_total = 0

4.times do
  puts "Song name:\n"
  song_name = gets.chomp
  puts "Song duration in seconds:\n"
  song_length = gets.chomp.to_i
  puts "How many times have you played this song?\n"
  times_played = gets.chomp.to_i
  total_time = song_length * times_played
  grand_total = grand_total + total_time

  song = {
    song_name: song_name,
    song_length: song_length,
    times_played: times_played,
    total_time: total_time
  }

  songs << song
end

puts "\nLet's take a look at your songs!\n\n"
4.times do |x|
  puts "Song: #{songs[x][:song_name]}"
  puts "Song Duration: #{songs[x][:song_length]} seconds."
  puts "Times Enjoyed: #{songs[x][:times_played]}."
  puts "Total Enjoyment: #{songs[x][:total_time]} seconds."
  puts "\n\n"
end

puts "You have listened to #{grand_total} seconds of sweet tunes!\n\n"
longest_song = songs.max_by { |winner| winner[:total_time] }
puts "Looks like your favorite song is #{longest_song[:song_name]}. You have listened to it the longest! \n\n "
puts "This calculator was made with love by Tanja Stroble. Thank you for using it!"
