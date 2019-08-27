puts 'Cleaning database...'
Message.destroy_all
Chat.destroy_all
Game.destroy_all
Question.destroy_all
Story.destroy_all
User.destroy_all

puts 'Creating users...'
alice = User.create!(name: "Alice",email: "alice@gmail.com", password: "123456")
sarah = User.create!(name: "Sarah",email: "sarah@gmail.com", password: "123456")
jack = User.create!(name: "Jack",email: "jack@gmail.com", password: "123456")
mike = User.create!(name: "Mike",email: "mike@gmail.com", password: "123456")
emma = User.create!(name: "Emma",email: "emma@gmail.com", password: "123456")
tom = User.create!(name: "Tom",email: "tom@gmail.com", password: "123456")
matt = User.create!(name: "Matt",email: "matt@gmail.com", password: "123456")
elsa = User.create!(name: "Elsa",email: "elsa@gmail.com", password: "123456")

puts 'Creating stories...'
airport = Story.create!(title: "At the airport", description: "I just arrived in town for a conference and I'm waiting at the baggage pickup area for my bag to arrive hoping that this trip will be a memorable one...", photo: "airport.jpg", greetings: "Well done! Tell me a little bit about you!", user_id: alice.id)
beach = Story.create!(title: "At the beach", description: "On holiday in Cancun I just had a swim and I'm walking back to where I left my towel when I notice someone else lying on it...", photo: "beach.jpg", greetings: "Well done! Tell me a little bit about you!", user_id: sarah.id)
post_office = Story.create!(title: "At the post office", description: "After an endless wait my turn finally arrives. I walk up to the desk and hand over the paper to get my mail but as I walk away...", photo: "post_office.jpg", greetings: "Well done! Tell me a little bit about you!", user_id: jack.id)
laundromat = Story.create!(title: "At the laundromat", description: "After an endless wait my turn finally arrives. I walk up to the laundry machine when someone rushes before me...", photo: "laundromat.jpg", greetings: "Well done! Tell me a little bit about you!", user_id: mike.id)

puts 'Creating questions...'

puts '... of story 1'
Question.create!(number: 1, seducee_introduction: "Alice, a lovely businesswoman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear her and turn around. What do you say?", seducer_answer_A: "What is a beautiful lady like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", correct_answer: "B", story_id: airport.id)
Question.create!(number: 2, seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", correct_answer: "B", story_id: airport.id)
Question.create!(number: 3, seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with your Alice...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", correct_answer: "A", story_id: airport.id)

puts '... of story 2'
Question.create!(number: 1, seducee_introduction: "Sarah, a lovely businesswoman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear her and turn around. What do you say?", seducer_answer_A: "What is a handsome guy like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", correct_answer: "A", story_id: beach.id)
Question.create!(number: 2, seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", correct_answer: "B", story_id: beach.id)
Question.create!(number: 3, seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with your Sarah...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", correct_answer: "A", story_id: beach.id)

puts '... of story 3'
Question.create!(number: 1, seducee_introduction: "Jack, a handsome businessman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear him and turn around. What do you say?", seducer_answer_A: "What is a handsome guy like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", correct_answer: "B", story_id: post_office.id)
Question.create!(number: 2, seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", correct_answer: "A", story_id: post_office.id)
Question.create!(number: 3, seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with your Jack...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", correct_answer: "B", story_id: post_office.id)


puts '... of story 3'
Question.create!(number: 1, seducee_introduction: "Mike, a handsome businessman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear him and turn around. What do you say?", seducer_answer_A: "What is a handsome guy like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", correct_answer: "A", story_id: post_office.id)
Question.create!(number: 2, seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", correct_answer: "A", story_id: post_office.id)
Question.create!(number: 3, seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with your Mike...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", correct_answer: "B", story_id: post_office.id)

puts 'Seed finished!'
