def badge_maker(name)
    return "Hello, my name is #{name}."
  end
  
  def batch_badge_creator(names)
    greetings = [] 
    names.each do |name| 
      greetings <<  badge_maker(name)
    end
    return greetings
  end
  
  def assign_rooms(speakers)
    greet = []
    speakers.each_with_index{ |speakers, index| greet << "Hello, #{speakers}! You'll be assigned to room #{index+1}!"}
    return greet
    end
  
  def printer(attendees)
    first_result = batch_badge_creator(attendees)
    first_result.each do |result|
      puts result 
    end
    result = assign_rooms(attendees)
    result.each do |result|
      puts result 
    end
  end