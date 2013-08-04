# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# questions
#    t.text     "content"
#    t.string   "type"
#    t.integer  "correct_choice_id"

#  choices
#    t.text     "content"
#    t.integer  "question_id"

#all correct answer is the first choice!
questions = [

	  {
	    content: "overlyattachedgirlfriend.jpg",
	    question_type:"Name this Meme",
	    choices:[
	      "Overly Attached Girlfriend",
	      "Staring Stacy",
	      "Youtube Queen",
	      "Overly Attached Gina"
	    ]
	  },

	#paranoid parrot
	  {
	    content: "paranoidparrot.jpg",
	    question_type: "Name this Meme",
	    choices:[
	      "Paranoid Parrot",
	      "Tenacious Bird",
	      "Creeped out Bird",
	      "Socially Awkward Penguin"

	    ]
	  },

	#scumbag steve

	  {
	    content: "scumbagsteve.jpg",
	    question_type: "Name this Meme",
	    choices:[
	      "Scumbag Steve",
	      "Douchebag Sam",
	      "Dumb Hat Guy",
	      "Stylish Steven"

	    ]
	  },


	#socially awkward penguin
	  {
	    content: "sociallyawkwardpenguin.jpg",
	    question_type: "Name this Meme",
	    choices:[
	      "Socially Awkward Penguin",
	      "Paranoid Penguin",
	      "Tuxedo Tom",
	      "Waddling Penguin"

	    ]
	  },
	#foul bachelor frog
	  {
	    content: "foulbachelorfrog.jpg",
	    question_type: "Name this Meme",
	    choices:[
	      "Foul Bachelor Frog",
	      "Funny Frog",
	      "Failure Frog",
	      "Bachelor Toad"

	    ]
	  },
	#courage wolf
	  {
	    content: "insanitywolf.jpg",
	    question_type: "Name this Meme",
	    choices:[
	      "Insanity Wolf",
	      "Caring Wolf",
	      "Winning Wolf",
	      "Wistful Wolf"

	    ]
	  },

	#Annoying FB girl
	  {
	    content: "annoyingfacebookgirl.jpg",
	    question_type: "Name this Meme",
	    choices:[
	      "Annoying Facebook Girl",
	      "Annoying Teenager",
	      "Annoying Anna",
	      "Funny Face Girl"

	    ]
	  },


	  #business cat
	    {
	      content: "businesscat.jpg",
	      question_type: "Name this Meme",
	      choices:[
	        "Business Cat",
	        "Overdressed Feline",
	        "Busy Bee Bob",
	        "Marketing Kitty"

	      ]
	    },

	  #bad joke eel
	    {
	      content: "badjokeeel.jpg",
	      question_type: "Name this Meme",
	      choices:[
	        "Bad Joke Eel",
	        "Excited Eel",
	        "Bad Pun Eel",
	        "Condescending Eel"

	      ]
	    },


	  #not sure fry
	    {
	      content: "notsurefry.jpg",
	      question_type: "Name this Meme",
	      choices:[
	        "Not Sure Fry",
	        "Undecided Guy",
	        "Squint Eye Fry",
	        "Always Unsure Guy"

	      ]
	    },

	  #success kid
	    {
	      content: "sucesskid.jpg",
	      question_type: "Name this Meme",
	      choices:[
	        "Success Kid",
	        "Thug Kid",
	        "Sucess Sammy",
	        "Baby Boom"

	      ]
	    },


	  #picard
	    {
	      content: "whythefuckpicard.jpg",
	      question_type: "Name this Meme",
	      choices:[
	        "Why The Fuck Picard",
	        "Disappointed Picard",
	        "Angry Bald Guy",
	        "Disappointed White Guy"

	      ]
	    }



]

questions.each do |question|

	savedQuestion = Question.create(
		content: question[:content],
		question_type: question[:question_type])

 	choices=[]

 	question[:choices].each do |choice|
 		savedChoice = Choice.create(
 			content: choice,
 			question_id: savedQuestion.id)
 		choices.push(savedChoice)
 	end

  savedQuestion.correct_choice_id = choices.first.id
  savedQuestion.save

end



