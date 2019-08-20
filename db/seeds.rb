puts 'Cleaning database...'
Question.destroy_all
Story.destroy_all
User.destroy_all

puts 'Creating users...'
nemo = User.create!(email: "nemo@ocean.com", password: "123456")
dory = User.create!(email: "dory@ocean.com", password: "123456")
marlin = User.create!(email: "marlin@ocean.com", password: "123456")
jacques = User.create!(email: "jacques@ocean.com", password: "123456")
bubbles = User.create!(email: "bubbles@ocean.com", password: "123456")

puts 'Creating stories...'
airport = Story.create!(title: "At the airport", description: "I just arrived in town for a conference and I'm waiting at the baggage pickup area for my bag to arrive hoping that this trip will be a memorable one...", photo: "airport.jpg", user_id: nemo.id)
beach = Story.create!(title: "At the beach", description: "On holiday in Cancun I just had a swim and I'm walking back to where I left my towel when I notice someone else lying on it...", photo: "beach.jpg", user_id: dory.id)
post_office = Story.create!(title: "At the post office", description: "After an endless wait my turn finally arrives. I walk up to the desk and hand over the paper to get my mail but as I walk away...", photo: "post_office.jpg", user_id: marlin.id)

puts 'Creating questions...'

puts '... of story 1'
Question.create!(seducee_introduction: "Romeo, a handsome businessman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear him and turn around. What do you say?", seducer_answer_A: "What is a handsome guy like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", story_id: airport.id)
Question.create!(seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", story_id: airport.id)
Question.create!(seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with your Romeo...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", story_id: airport.id)

puts '... of story 2'
Question.create!(seducee_introduction: "Jeff, a handsome businessman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear him and turn around. What do you say?", seducer_answer_A: "What is a handsome guy like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", story_id: beach.id)
Question.create!(seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", story_id: beach.id)
Question.create!(seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with your Romeo...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", story_id: beach.id)

puts '... of story 3'
Question.create!(seducee_introduction: "Liam, a handsome businessman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear him and turn around. What do you say?", seducer_answer_A: "What is a handsome guy like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", story_id: post_office.id)
Question.create!(seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", story_id: post_office.id)
Question.create!(seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with your Romeo...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", story_id: post_office.id)

puts 'Seed finished!'
