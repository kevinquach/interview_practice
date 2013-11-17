LIMIT = 1.0 / 0 # This is equivalent to infinity
%w{rubygems time redis}.each{|r| require r}

$redis = Redis.new(:host => "127.0.0.1", :port => 6379)
$redis.flushall
count, start = 0, Time.now
File.open(ARGV[0]).each do |line|
  count += 1
  next if count == 1
  isbn, _, _, title = line.split("\t")
  next if isbn.empty? || title == "\n"

  $redis.set(isbn, title.strip)

  #set the LIMIT value if you do not wish to populate the entire dataset
  break if count >= LIMIT
end

puts "#{count} items in #{Time.now - start} seconds"
