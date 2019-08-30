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

airport = Story.create!(title: "A l'aéroport", photo: "airport.jpg", user_id: alice.id, greetings: "Bravo, jusqu'à présent tu t'en sors bien, j'ai hâte de découvrire la suite.. Séduis-moi!")
beach = Story.create!(title: "A la plage", photo: "beach.jpg", user_id: sarah.id, greetings: "Bravo, jusqu'à présent tu t'en sors bien, j'ai hâte de découvrire la suite.. Séduis-moi!")
post_office = Story.create!(title: "A la poste", photo: "post_office.jpg", user_id: jack.id, greetings: "Bravo, jusqu'à présent tu t'en sors bien, j'ai hâte de découvrire la suite.. Séduis-moi!")
laundromat = Story.create!(title: "A la laverie", photo: "laundromat.jpg", user_id: mike.id, greetings: "Bravo, jusqu'à présent tu t'en sors bien, j'ai hâte de découvrire la suite.. Séduis-moi!")

puts 'Creating questions...'

puts '... of story 1'
Question.create!(number: 1,
  seducee_introduction: "Alice, une jeune femme d'affaires attend sa valise, mais elle n'arrive pas...",
  seducee_phrase: "C'est pas possible! Ils ont égaré mon bagage!",
  seducer_introduction: "Tu l'entends et te tournes vers elle. Que lui dis-tu ?",
  seducer_answer_A: "Un peu de patience ma jolie, en attendent passer dans mon bureau!",
  seducer_answer_B: "Puis-je vous aider ? Je travaille ici.",
  correct_answer: "B",
  story_id: airport.id)
Question.create!(number: 2, seducee_introduction: "Vous vous retrouvez dans un coin tranquille de l'aéroport.",
  seducee_phrase: "Que vais-je faire maintenant? Les clés de mon appartement sont dans ma valise !",
  seducer_introduction: "Chevaleresque, tu veux l'aider. Que proposes-tu ?",
  seducer_answer_A: "Je te prête mon téléphone si tu veux appeler ta mère!",
  seducer_answer_B: "Allons prendre un verre le temps que votre valise arrive..",
  correct_answer: "B",
  story_id: airport.id)
Question.create!(number: 3,   seducee_introduction: "Vous prenez un verre et tout se passe bien jusqu'à ce que son ex débarque et flirte avec elle. Alice te glisse discrètement..",
  seducee_phrase: "Désolée, il n'a pas l'air de vouloir partir...",
  seducer_introduction: "Sa présence vous dérange. Que dis-tu?",
  seducer_answer_A: "Excusez-moi, mais on essaie d'avoir une conversation privée ici!",
  seducer_answer_B: "Voulez-vous vous joindre à nous ?",
  correct_answer: "A",
  story_id: airport.id)

puts '... of story 2'
Question.create!(number: 1,   seducee_introduction: "Après une bonne séance de natation, tu sors de l'eau, torse bombé et muscles saillants. Quand tu t'aperçois qu'une magnifique créature c'est installée sur ta serviette de bain. Tu t'approches.. Puis elle te dit",
  seducee_phrase: "Hey tu me fais de l'ombre là.. Tu veux ruiner mon bronzage ou quoi?!?",
  seducer_introduction: "surpris, que lui réponds-tu ?",
  seducer_answer_A: "tu crois qu'il y a de la place pour deux sur ma serviette ?",
  seducer_answer_B: "désolé pour votre joli bronzage, mais je crois que vous vous êtes trompés de serviette..",
  correct_answer: "B",   story_id: beach.id)
Question.create!(number: 2, seducee_introduction: "la fille se retourne, blasée, elle te regarde avec des grands yeux.",
  seducee_phrase: "Heu! Je crois pas, non!",
  seducer_introduction: "Que lui réponds-tu?",
  seducer_answer_A: "Ok, très bien! Je vais voir plus loin si je retrouve ma serviette...",
  seducer_answer_B: "Tu es gentille ma cocotte, mais ta copine vient juste sortir de l'eau et s'est réinstallée sur serviette à côté de la tienne..",
  correct_answer: "A",   story_id: beach.id)
Question.create!(number: 3,   seducee_introduction: "tu vas voir sa copine et lui expliques la situation",
  seducee_phrase: "Désolée, mon amie a la tête dure, elle a du te recevoir gaiement...",
  seducer_introduction: "vous plaisantez un peu, puis tu lui dis:",
  seducer_answer_A: "Peux-tu aller la voir s'il te plaît, j’ai pas envie de me faire rembarrer une deuxième fois",
  seducer_answer_B: "Tu es beaucoup plus sympa que ta copine, je peux m'asseoir moment ? Vu que ma serviette n'est plus disponible..",
  correct_answer: "B",
  story_id: beach.id)

Commencer la puts '... of story 3'
Question.create!(number: 1,   seducee_introduction: "Une femme qui te plaît sort de la poste, tu décides de l’aborder.. ",
  seducee_phrase: "Bonjour, que me voulez-vous?",
  seducer_introduction: "Que lui dis-tu ?",
  seducer_answer_A: "Salut, ça va te paraître fou mais je t’ai vu et je me suis dit que ce serait idiot de ne pas venir te parler.",
  seducer_answer_B: "Hey, est-ce que ton nom serait Wi-Fi ? Parce que je sens qu’on a une connexion.",
  correct_answer: "A",
  story_id: post_office.id)
Question.create!(number: 2, seducee_introduction: "elle sourit gentiment et te dit",
  seducee_phrase: "D'accord, et de quoi veut tu me parler!",
  seducer_introduction: "Que lui dis-tu ?",
  seducer_answer_A: "Quand je t'ai vu sortir de la poste, j'ai eu comme un flash, si tu as un peu de temps j'adorerai qu'on prenne un verre tous les deux",
  seducer_answer_B: "Je voulais de demander si ton père n'était pas un voleur",
  correct_answer: "A",
  story_id: post_office.id)
Question.create!(number: 3,   seducee_introduction: "Elle accepte, vous passer un agréable moment, une certaine complicité s'installe entre vous..",
  seducee_phrase: "C'était très sympa de discuter avec toi mais là je dois y aller..",
  seducer_introduction: "Que lui dis-tu?",
  seducer_answer_A: "C'est vrai moi aussi, alors on va chez toi ou chez moi?",
  seducer_answer_B: "Ça me ferait super plaisir de te revoir ! On échange nos numéros pour chatter un peu ?",
  correct_answer: "B",
  story_id: post_office.id)

puts '... of story 4'
Question.create!(number: 1,   seducee_introduction: "Tu entres dans une laverie avec ton linge sale quand tu t'aperçois que la fille qui vient de sortir a oublier son tanga dans le tambour et ses clés sur la machine. Tu sors en courant pour la rattraper et lui dis qu’elle a oublié quelque chose...",
  seducee_phrase: "Ah oui, qu’ai-je donc oublié?",
  seducer_introduction: "Que lui réponds-tu?",
  seducer_answer_A: "Votre Tanga super sexy",
  seducer_answer_B: "Vos clefs et un habit",
  correct_answer: "A",   story_id: laundromat.id)
Question.create!(number: 2, seducee_introduction: "Un peu gênée elle te répond que ce n’est pas à elle... Tu lui montres les clefs en souriant puis elle se met à rigoler...",
  seducee_phrase: "Ok tout ceci m’appartient",
  seducer_introduction: "",
  seducer_answer_A: "Ce tanga sur vous doit être magnifique",
  seducer_answer_B: "Vous avez un rire très communicatif, je peux vous inviter à prendre un verre ?",
  correct_answer: "B",
  story_id: laundromat.id)
Question.create!(number: 3,   seducee_introduction: "Vous passez un super moment puis elle te raccompagne à la laverie quand vous apercevez qu’on t'a volé ton sac de linge sale ainsi que tes clés d’appartement qui était à l’intérieur...",
  seducee_phrase: "Mince alors ! Il t’arrive ce qui a failli m’arriver...",
  seducer_introduction: "",
  seducer_answer_A: "Je crois que je vais être obligé de dormir chez toi",
  seducer_answer_B: "C’est pas grave je connais un bon serrurier et si tu me donnes ton numéro, j’aurai tout gagné aujourd’hui.",
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
