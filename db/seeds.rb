puts 'Cleaning database...'
Message.destroy_all
Chat.destroy_all
Game.destroy_all
Question.destroy_all
Story.destroy_all
User.destroy_all

puts 'Creating users...'
alice = User.create!(name: "Alice",email: "alice@gmail.com", password: "123456", avatar: "alice.jpg")
sarah = User.create!(name: "Sarah",email: "sarah@gmail.com", password: "123456", avatar: "sarah.jpg")
jack = User.create!(name: "Jack",email: "jack@gmail.com", password: "123456", avatar: "jack.jpg")
mike = User.create!(name: "Mike",email: "mike@gmail.com", password: "123456", avatar: "mike.jpg")
tom = User.create!(name: "Tom",email: "tom@gmail.com", password: "123456", avatar: "tom.jpg")
matt = User.create!(name: "Matt",email: "matt@gmail.com", password: "123456", avatar: "matt.jpg")
emma = User.create!(name: "Emma",email: "emma@gmail.com", password: "123456", avatar: "emma.jpg")
elsa = User.create!(name: "Elsa",email: "elsa@gmail.com", password: "123456", avatar: "elsa.jpg")

puts 'Creating stories...'

airport = Story.create!(title: "A l'aéroport", photo: "airport.jpg", user_id: alice.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
beach = Story.create!(title: "A la plage", photo: "beach.jpg", user_id: sarah.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
post_office = Story.create!(title: "A la poste", photo: "post_office.jpg", user_id: jack.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
laundromat = Story.create!(title: "A la laverie", photo: "laundromat.jpg", user_id: mike.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")

puts 'Creating questions...'

puts '... of story 1'
Question.create!(number: 1,
  seducee_introduction: "Alice, une jeune femme d'affaire attend sa valise mais elle n'arrive pas...",
  seducee_phrase: "Ce n'est pas possible! Ils ont égaré mon bagage!",
  seducer_introduction: "Tu l'entends et te tournes vers elle. Que dis-tu ?",
  seducer_answer_A: "Que fait une belle jeune femme comme vous dans un endroit pareil ?",
  seducer_answer_B: "Puis-je vous aider ? Je travaille ici.",
  correct_answer: "B",
  story_id: airport.id)
Question.create!(number: 2, seducee_introduction: "Vous vous retrouvez dans un coin tranquille de l'aéroport.",
  seducee_phrase: "Que vais-je faire maintenant? Les clés de mon appartement sont dans ma valise !",
  seducer_introduction: "Chevalresque, tu veux l'aider. Que proposes-tu ?",
  seducer_answer_A: "Je vous prête mon téléphone pour appeler vos parents !",
  seducer_answer_B: "Allons prendre un verre et vous vous en occuperez plus tard !",
  correct_answer: "B",
  story_id: airport.id)
Question.create!(number: 3,
  seducee_introduction: "Vous prenez un verre et tout se passe bien jusqu'à ce que son ex débarque et flirte avec elle. Alice te glisse discrètement..",
  seducee_phrase: "Désolée, il n'a pas l'air de vouloir partir...",
  seducer_introduction: "Sa présence vous dérange. Que dis-tu?",
  seducer_answer_A: "Excusez-moi mais on essaie d'avoir une conversation privée ici!",
  seducer_answer_B: "Voulez-vous vous joindre à nous ?",
  correct_answer: "A",
  story_id: airport.id)

puts '... of story 2'
Question.create!(number: 1,
  seducee_introduction: "Alice, une jeune femme d'affaire attend sa valise mais elle n'arrive pas...",
  seducee_phrase: "Ce n'est pas possible! Ils ont égaré mon bagage!",
  seducer_introduction: "Tu l'entends et te tournes vers elle. Que dis-tu ?",
  seducer_answer_A: "Que fait une belle jeune femme comme vous dans un endroit pareil ?",
  seducer_answer_B: "Puis-je vous aider ? Je travaille ici.",
  correct_answer: "B",
  story_id: beach.id)
Question.create!(number: 2, seducee_introduction: "Vous vous retrouvez dans un coin tranquille de l'aéroport.",
  seducee_phrase: "Que vais-je faire maintenant? Les clés de mon appartement sont dans ma valise !",
  seducer_introduction: "Chevalresque, tu veux l'aider. Que proposes-tu ?",
  seducer_answer_A: "Je vous prête mon téléphone pour appeler vos parents !",
  seducer_answer_B: "Allons prendre un verre et vous vous en occuperez plus tard !",
  correct_answer: "A",
  story_id: beach.id)
Question.create!(number: 3,
  seducee_introduction: "Vous prenez un verre et tout se passe bien jusqu'à ce que son ex débarque et flirte avec elle. Alice te glisse discrètement..",
  seducee_phrase: "Désolée, il n'a pas l'air de vouloir partir...",
  seducer_introduction: "Sa présence vous dérange. Que dis-tu?",
  seducer_answer_A: "Excusez-moi mais on essaie d'avoir une conversation privée ici!",
  seducer_answer_B: "Voulez-vous vous joindre à nous ?",
  correct_answer: "B",
  story_id: beach.id)

puts '... of story 3'
Question.create!(number: 1,
  seducee_introduction: "Alice, une jeune femme d'affaire attend sa valise mais elle n'arrive pas...",
  seducee_phrase: "Ce n'est pas possible! Ils ont égaré mon bagage!",
  seducer_introduction: "Tu l'entends et te tournes vers elle. Que dis-tu ?",
  seducer_answer_A: "Que fait une belle jeune femme comme vous dans un endroit pareil ?",
  seducer_answer_B: "Puis-je vous aider ? Je travaille ici.",
  correct_answer: "B",
  story_id: post_office.id)
Question.create!(number: 2, seducee_introduction: "Vous vous retrouvez dans un coin tranquille de l'aéroport.",
  seducee_phrase: "Que vais-je faire maintenant? Les clés de mon appartement sont dans ma valise !",
  seducer_introduction: "Chevalresque, tu veux l'aider. Que proposes-tu ?",
  seducer_answer_A: "Je vous prête mon téléphone pour appeler vos parents !",
  seducer_answer_B: "Allons prendre un verre et vous vous en occuperez plus tard !",
  correct_answer: "A",
  story_id: post_office.id)
Question.create!(number: 3,
  seducee_introduction: "Vous prenez un verre et tout se passe bien jusqu'à ce que son ex débarque et flirte avec elle. Alice te glisse discrètement..",
  seducee_phrase: "Désolée, il n'a pas l'air de vouloir partir...",
  seducer_introduction: "Sa présence vous dérange. Que dis-tu?",
  seducer_answer_A: "Excusez-moi mais on essaie d'avoir une conversation privée ici!",
  seducer_answer_B: "Voulez-vous vous joindre à nous ?",
  correct_answer: "B",
  story_id: post_office.id)


puts '... of story 4'

Question.create!(number: 1,
  seducee_introduction: "Tu entres dans une laverie avec ton linge sale quand tu t'aperçois que la fille qui vient de sortir à oublier son tanga dans le tambour et ses clés sur la machine. Tu sors en courant pour la rattraper et lui dis qu’elle as oublié quelque chose...",
  seducee_phrase: "Ah oui qu’ai-je donc oublié?",
  seducer_introduction: "Que lui réponds-tu?",
  seducer_answer_A: "Votre Tanga super sexy",
  seducer_answer_B: "Vos clefs et un habit",
  correct_answer: "A",
  story_id: laundromat.id)
Question.create!(number: 2, seducee_introduction: "Un peu gênée elle te répond que ce n’est pas à elle... Tu lui montres les clefs en souriant puis elle se met à rigoler...",
  seducee_phrase: "Ok tout ceci m’appartient",
  seducer_introduction: "",
  seducer_answer_A: "Ce tanga sur vous dois être magnifique",
  seducer_answer_B: "Vous avez un rire très communicatif, je peux vous inviter à prendre un verre ?",
  correct_answer: "B",
  story_id: laundromat.id)
Question.create!(number: 3,
  seducee_introduction: "Vous passez un super moment puis elle te raccompagne à la laverie quand vous apercevez qu’on t'a volé ton sac de linge sale ainsi que tes clés d’appartement qui était à l’intérieur...",
  seducee_phrase: "Mince alors ! Il t’arrive ce qui a failli m’arriver...",
  seducer_introduction: "",
  seducer_answer_A: "Je crois que je vais être obliger de dormir chez toi",
  seducer_answer_B: "C’est pas grave je connais un bon serrurier et si tu me donne ton numéro, j’aurai tout gagné aujourd’hui.",
  correct_answer: "B",
  story_id: laundromat.id)


puts 'Creating Games'

game1 = Game.create!(user_id: alice.id, story_id: beach.id, score: 3)
game2 = Game.create!(user_id: sarah.id, story_id: post_office.id, score: 3)
game3 = Game.create!(user_id: jack.id, story_id: laundromat.id, score: 3)
game4 = Game.create!(user_id: mike.id, story_id: airport.id, score: 3)
game5 = Game.create!(user_id: emma.id, story_id: beach.id, score: 3)
game6 = Game.create!(user_id: emma.id, story_id: post_office.id, score: 2)
game7 = Game.create!(user_id: elsa.id, story_id: airport.id, score: 1)
game8 = Game.create!(user_id: elsa.id, story_id: laundromat.id, score: 3)

puts 'Creating Chats'

Chat.create!(game_id: game1.id)
Chat.create!(game_id: game2.id)
Chat.create!(game_id: game3.id)
Chat.create!(game_id: game4.id)
Chat.create!(game_id: game5.id)
Chat.create!(game_id: game8.id)

puts 'Seed finished!'
