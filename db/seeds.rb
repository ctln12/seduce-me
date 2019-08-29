puts 'Cleaning database...'
Message.destroy_all
Chat.destroy_all
Game.destroy_all
Question.destroy_all
Story.destroy_all
User.destroy_all


puts 'Creating users...'

seb = User.create!(name: "Seb",email: "seb@gmail.com", password: "123456", ranking: 0.0, avatar: "seb.jpg")
alice = User.create!(name: "Alice",email: "alice@gmail.com", password: "123456", ranking: 0.0, avatar: "alice.jpg")
sarah = User.create!(name: "Sarah",email: "sarah@gmail.com", password: "123456", ranking: 0.0, avatar: "sarah.jpg")
jack = User.create!(name: "Jack",email: "jack@gmail.com", password: "123456", ranking: 0.0, avatar: "jack.jpg")
mike = User.create!(name: "Mike",email: "mike@gmail.com", password: "123456", ranking: 0.0, avatar: "mike.jpg")
tom = User.create!(name: "Tom",email: "tom@gmail.com", password: "123456", ranking: 0.0, avatar: "tom.jpg")
matt = User.create!(name: "Matt",email: "matt@gmail.com", password: "123456", ranking: 0.0, avatar: "matt.jpg")
emma = User.create!(name: "Emma",email: "emma@gmail.com", password: "123456", ranking: 0.0, avatar: "emma.jpg")
elsa = User.create!(name: "Elsa",email: "elsa@gmail.com", password: "123456", ranking: 0.0, avatar: "elsa.jpg")
aatik = User.create!(name: "Aatik",email: "aatik@gmail.com", password: "123456", ranking: 0.0, avatar: "aatik.jpg")
adria = User.create!(name: "Adria",email: "adria@gmail.com", password: "123456", ranking: 0.0, avatar: "adria.jpg")
carla = User.create!(name: "Carla",email: "carla@gmail.com", password: "123456", ranking: 0.0, avatar: "carla.jpg")
lina = User.create!(name: "Lina",email: "lina@gmail.com", password: "123456", ranking: 0.0, avatar: "lina.jpg")
eduardo = User.create!(name: "Eduardo",email: "eduardo@gmail.com", password: "123456", ranking: 0.0, avatar: "eduardo.jpg")
erik = User.create!(name: "Erik",email: "erik@gmail.com", password: "123456", ranking: 0.0, avatar: "erik.jpg")
mila = User.create!(name: "Mila",email: "mila@gmail.com", password: "123456", ranking: 0.0, avatar: "mila.jpg")
florian = User.create!(name: "Florian",email: "florian@gmail.com", password: "123456", ranking: 0.0, avatar: "florian.jpg")
gabrielle = User.create!(name: "Gabrielle",email: "gabrielle@gmail.com", password: "123456", ranking: 0.0, avatar: "gabrielle.jpg")
gabby = User.create!(name: "Gabby",email: "gabby@gmail.com", password: "123456", ranking: 0.0, avatar: "gabby.jpg")
manon = User.create!(name: "Manon",email: "manon@gmail.com", password: "123456", ranking: 0.0, avatar: "manon.jpg")
ines = User.create!(name: "Inès",email: "ines@gmail.com", password: "123456", ranking: 0.0, avatar: "ines.jpg")
gabriel = User.create!(name: "Gabriel",email: "gabriel@gmail.com", password: "123456", ranking: 0.0, avatar: "gabriel.jpg")
sacha = User.create!(name: "Sacha",email: "sacha@gmail.com", password: "123456", ranking: 0.0, avatar: "sacha.jpg")
mia = User.create!(name: "Mia",email: "mia@gmail.com", password: "123456", ranking: 0.0, avatar: "mia.jpg")
esteban = User.create!(name: "Esteban",email: "esteban@gmail.com", password: "123456", ranking: 0.0, avatar: "esteban.jpg")
nina = User.create!(name: "Nina",email: "nina@gmail.com", password: "123456", ranking: 0.0, avatar: "nina.jpg")
inaya = User.create!(name: "Inaya",email: "inaya@gmail.com", password: "123456", ranking: 0.0, avatar: "inaya.jpg")
margaux = User.create!(name: "Margaux",email: "margaux@gmail.com", password: "123456", ranking: 0.0, avatar: "Margaux.jpg")
louna = User.create!(name: "Louna",email: "louna@gmail.com", password: "123456", ranking: 0.0, avatar: "louna.jpg")
lilou = User.create!(name: "Lilou",email: "lilou@gmail.com", password: "123456", ranking: 0.0, avatar: "lilou.jpg")
timeo = User.create!(name: "Timéo",email: "timeo@gmail.com", password: "123456", ranking: 0.0, avatar: "timeo.jpg")
victoria = User.create!(name: "Victoria",email: "victoria@gmail.com", password: "123456", ranking: 0.0, avatar: "victoria.jpg")
iris = User.create!(name: "Iris",email: "iris@gmail.com", password: "123456", ranking: 0.0, avatar: "iris.jpg")
anais = User.create!(name: "Anais",email: "anais@gmail.com", password: "123456", ranking: 0.0, avatar: "anais.jpg")
ayden = User.create!(name: "ayden",email: "ayden@gmail.com", password: "123456", ranking: 0.0, avatar: "ayden.jpg")
mathilde = User.create!(name: "Mathilde",email: "mathilde@gmail.com", password: "123456", ranking: 0.0, avatar: "mathilde.jpg")
hugo = User.create!(name: "Hugo",email: "hugo@gmail.com", password: "123456", ranking: 0.0, avatar: "hugo.jpg")
noa = User.create!(name: "Noa",email: "noa@gmail.com", password: "123456", ranking: 0.0, avatar: "noa.jpg")

Users = [seb, sarah, alice, jack, mike, tom, matt, emma, elsa, aatik, adria, carla, lina,
          eduardo, erik, mila, florian, gabrielle, gabby, manon, ines, gabriel, sacha, mia,
          esteban, nina, inaya, margaux, louna, lilou, timeo, victoria, iris, anais, ayden,
          mathilde, hugo, noa ]

puts 'Creating stories...'

airport = Story.create!(title: "à l'aéroport", photo: "airport.jpg", user_id: alice.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
beach = Story.create!(title: "à la plage", photo: "beach.jpg", user_id: sarah.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
post_office = Story.create!(title: "à la poste", photo: "post_office.jpg", user_id: jack.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
laundromat = Story.create!(title: "à la laverie", photo: "laundromat.jpg", user_id: mike.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
grocery_store = Story.create!(title: "à la Migros", photo: "grocery_store.jpg", user_id: tom.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
chalet = Story.create!(title: "au chalet", photo: "chalet.jpg", user_id: matt.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
gym = Story.create!(title: "au fitness", photo: "gym.jpg", user_id: emma.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
office = Story.create!(title: "au le Wagon", photo: "office.jpg", user_id: elsa.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
boat = Story.create!(title: "en croisière", photo: "boat.jpg", user_id: aatik.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
train = Story.create!(title: "en train", photo: "train.jpg", user_id: adria.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
party = Story.create!(title: "en boîte", photo: "party.jpg", user_id: carla.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
classroom = Story.create!(title: "à l'amphithéatre", photo: "classroom.jpg", user_id: lina.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
cafe = Story.create!(title: "au café", photo: "cafe.jpg", user_id: eduardo.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
library = Story.create!(title: "à la bibliothèque", photo: "library.jpg", user_id: erik.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
garage = Story.create!(title: "au garage", photo: "garage.jpg", user_id: victoria.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
skiing = Story.create!(title: "au ski", photo: "skiing.jpg", user_id: lilou.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
skating = Story.create!(title: "à la patinoire", photo: "skating.jpg", user_id: margaux.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
surfing = Story.create!(title: "au spot de surf", photo: "surfing.jpg", user_id: inaya.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
cycling = Story.create!(title: "en balade à velo", photo: "cycling.jpg", user_id: esteban.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
hiking = Story.create!(title: "en randonnée", photo: "hiking.jpg", user_id: alice.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")
wedding = Story.create!(title: "au marriage de ma cousine", photo: "wedding.jpg", user_id: sarah.id, greetings: "Bravo, tu as réussi à me séduire jusqu'ici! J'ai hâte d'en savoir plus sur toi!")

Stories = [ airport, beach, post_office, laundromat, grocery_store, chalet, gym,
            office, boat, train, party, classroom, cafe, library, garage, skiing,
             skating, surfing, cycling, hiking, wedding ]

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

puts '... of stories 5 to 20'

Stories[4...].each do |story|
  Question.create!(number: 1,
    seducee_introduction: "Tu entres dans une laverie avec ton linge sale quand tu t'aperçois que la fille qui vient de sortir à oublier son tanga dans le tambour et ses clés sur la machine. Tu sors en courant pour la rattraper et lui dis qu’elle as oublié quelque chose...",
    seducee_phrase: "Ah oui qu’ai-je donc oublié?",
    seducer_introduction: "Que lui réponds-tu?",
    seducer_answer_A: "Votre Tanga super sexy",
    seducer_answer_B: "Vos clefs et un habit",
    correct_answer: "A",
    story_id: story.id)
  Question.create!(number: 2, seducee_introduction: "Un peu gênée elle te répond que ce n’est pas à elle... Tu lui montres les clefs en souriant puis elle se met à rigoler...",
    seducee_phrase: "Ok tout ceci m’appartient",
    seducer_introduction: "",
    seducer_answer_A: "Ce tanga sur vous dois être magnifique",
    seducer_answer_B: "Vous avez un rire très communicatif, je peux vous inviter à prendre un verre ?",
    correct_answer: "B",
    story_id: story.id)
  Question.create!(number: 3,
    seducee_introduction: "Vous passez un super moment puis elle te raccompagne à la laverie quand vous apercevez qu’on t'a volé ton sac de linge sale ainsi que tes clés d’appartement qui était à l’intérieur...",
    seducee_phrase: "Mince alors ! Il t’arrive ce qui a failli m’arriver...",
    seducer_introduction: "",
    seducer_answer_A: "Je crois que je vais être obliger de dormir chez toi",
    seducer_answer_B: "C’est pas grave je connais un bon serrurier et si tu me donne ton numéro, j’aurai tout gagné aujourd’hui.",
    correct_answer: "B",
    story_id: story.id)
end

def ranking(user)
  (user.games.where(score: 3).count.to_f / user.games.count.to_f).round(4)
end

def score_calculator
  r = rand(2)
  r += rand(2) if r == 1
  r += rand(2) if r == 2
  r
end



puts 'Creating Games and chats'

Users[1...].each do |user|
  Stories.each do |story|
    if story.user != user
      game = Game.create!(user_id: user.id, story_id: story.id, score: rand(1..3))
      user.ranking = ranking(user)
      user.save
      if game.score == 3
        Chat.create!(game_id: game.id)
      end
    end
  end
end




# game1 = Game.create!(user_id: alice.id, story_id: beach.id, score: 3)
# game2 = Game.create!(user_id: sarah.id, story_id: post_office.id, score: 3)
# game3 = Game.create!(user_id: jack.id, story_id: laundromat.id, score: 3)
# game4 = Game.create!(user_id: mike.id, story_id: airport.id, score: 3)
# game5 = Game.create!(user_id: emma.id, story_id: beach.id, score: 3)
# game6 = Game.create!(user_id: emma.id, story_id: post_office.id, score: 2)
# game7 = Game.create!(user_id: elsa.id, story_id: airport.id, score: 1)
# game8 = Game.create!(user_id: elsa.id, story_id: laundromat.id, score: 3)

# puts 'Creating Chats'

# Chat.create!(game_id: game1.id)
# Chat.create!(game_id: game2.id)
# Chat.create!(game_id: game3.id)
# Chat.create!(game_id: game4.id)
# Chat.create!(game_id: game5.id)
# Chat.create!(game_id: game8.id)

puts 'Seed finished!'

