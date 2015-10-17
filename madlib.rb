nouns = File.open('nouns.txt', 'r') do |f|
  f.read
end.split

verbs = File.open('verbs.txt', 'r') do |f|
  f.read
end.split

adjectives = File.open('adjectives.txt', 'r') do |f|
  f.read
end.split

dictionary = {
  nouns: nouns,
  verbs: verbs,
  adjectives: adjectives
}





def say(msg)
  puts "=> #{msg}"
end

def exit_with(msg)
  say msg
  exit
end

def get_input
  say "Input a noun"
  STDIN.gets.chomp
end


exit_with("No input file") if ARGV.empty?
exit_with("File doesn't exist") if !File.exist?(ARGV[0])

contents = File.open(ARGV[0], 'r') do |f|
  f.read

end


contents.gsub!("NOUN").each do 
  #dictionary[:nouns].sample
  #user inputs nouns
  get_input
end

contents.gsub!("VERB").each do 
  dictionary[:verbs].sample
end

contents.gsub!("ADJECTIVE").each do 
  dictionary[:adjectives].sample
end

puts contents
