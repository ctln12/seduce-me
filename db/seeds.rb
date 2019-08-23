puts 'Cleaning database...'
Message.destroy_all
Chat.destroy_all
Game.destroy_all
Question.destroy_all
Story.destroy_all
User.destroy_all

puts 'Creating users...'
sarah = User.create!(email: "sarah@gmail.com", password: "123456")
alice = User.create!(email: "alice@gmail.com", password: "123456")
jack = User.create!(email: "jack@gmail.com", password: "123456")
tom = User.create!(email: "tom@gmail.com", password: "123456")
mike = User.create!(email: "mike@gmail.com", password: "123456")
emma = User.create!(email: "emma@gmail.com", password: "123456")

puts 'Creating story 1'
beach = Story.create!(title: "At the beach", description: "On holiday in Cancun I just had a swim and I'm walking back to where I left my towel when I notice someone else lying on it...", photo: "beach.jpg", user_id: sarah.id)

puts 'Questions of story 1'
Question.create!(number: 1, seducee_introduction: "Sarah, a young businesswoman on holiday feels relaxed after swimming as she walk back to her belongings...", seducee_phrase: "What are you doing on my towel???", seducer_introduction: "She wakes you up from a restful nap... What do you say?", seducer_answer_A: "Are you sure it's yours?", seducer_answer_B: "Can I offer you a drink for my mistake?", correct_answer: "B", story_id: beach.id)
Question.create!(number: 2, seducee_introduction: "You and Sarah are now at the bar having a lovely conversation when she spills her drink on your shirt...", seducee_phrase: "I'm so sorry!", seducer_introduction: "You jump on your feet because the drink is cold...'", seducer_answer_A: "This makes us even: one mistake all!", seducer_answer_B: "Can't you be more careful! This shirt costs a fortune!", correct_answer: "A", story_id: beach.id)
Question.create!(number: 3, seducee_introduction: "You go back to your hotel room to change but you propose to meet again later. She seems uncertain", seducee_phrase: " Sure...", seducer_introduction: "You try to think of something nice to do together", seducer_answer_A: "Shall we have a midnight swim?", seducer_answer_B: "Shall we go dancing?", correct_answer: "A", story_id: beach.id)

puts 'Creating story 2'
post_office = Story.create!(title: "At the post office", description: "After an endless wait my turn finally arrives. I walk up to the desk and hand over the notification to get my mail...", photo: "post_office.jpg", user_id: alice.id)

puts 'Creating questions of story 2'
Question.create!(number: 1, seducee_introduction: "", seducee_phrase: "", seducer_introduction: "", seducer_answer_A: "", seducer_answer_B: "", correct_answer: "", story_id: post_office.id)
Question.create!(number: 2, seducee_introduction: "", seducee_phrase: "", seducer_introduction: "", seducer_answer_A: "", seducer_answer_B: "", correct_answer: "", story_id: post_office.id)
Question.create!(number: 3, seducee_introduction: "", seducee_phrase: "", seducer_introduction: "", seducer_answer_A: "", seducer_answer_B: "", correct_answer: "", story_id: post_office.id)


puts 'Creating story 3'
airport = Story.create!(title: "At the airport", description: "I just arrived in town for a conference and I'm waiting at the baggage pickup area for my bag to arrive hoping that this trip will be a memorable one...", photo: "airport.jpg", user_id: jack.id)

puts 'Questions of story 3'
Question.create!(number: 1, seducee_introduction: "Jack, a handsome businessman awaits his baggage to arrive, but it never arrives", seducee_phrase: "I just can't believe it! They lost my baggage!", seducer_introduction: "You hear him and turn around. What do you say?", seducer_answer_A: "What is a handsome guy like you doing in a place like this?", seducer_answer_B: "Can I help you find your baggage? I work here.", correct_answer: "B", story_id: airport.id)
Question.create!(number: 2, seducee_introduction: "You find yourselves in a lonely corner of the airport", seducee_phrase: "What will I do now? They keys for my flat are inside my baggage!", seducer_introduction: "You start saying, 'I think I can help you with that...'", seducer_answer_A: "Let me get a phone so you can call your mom!", seducer_answer_B: "Let's have a drink and you can figure it out later...", correct_answer: "B", story_id: airport.id)
Question.create!(number: 3, seducee_introduction: "You are having a drink and everthing is going great when all of a sudden a sexy flight attendant starts to flirt with Jack...", seducee_phrase: "Nice to meet you", seducer_introduction: "What do you say?", seducer_answer_A: "Sorry but we are trying to have a private conversation here!", seducer_answer_B: "Nice to meet you too. Why don't you join us?", correct_answer: "A", story_id: airport.id)

puts 'Seed finished!'
