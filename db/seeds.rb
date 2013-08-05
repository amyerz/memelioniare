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
    },
	    
	    
  #cocaine bear
    {
      content: "cocaine-bear.jpg",
      question_type: "Name this Meme",
      choices:[
        "I Fucking Love Cocaine Bear",
        "Bernstein Bear",
        "Snowy Bear",
        "Mr. Grizzly Bear"

      ]
    },
  	    
   #good guy greg
    {
      content: "good_guy_greg.jpg",
      question_type: "Name this Meme",
      choices:[
        "Good Guy Greg",
        "Stoner Dude",
        "Happy Steve",
        "Chronic Chris"

      ]
    },
    
    	    
  #leave brtiney alone
    {
      content: "Leave_Britney_Alone.jpg",
      question_type: "Name this Meme",
      choices:[
        "Leave Britney Alone",
        "Leave Me Alone",
        "Leave Shania Alone",
        "Leave Amanda Bynes Alone"
        
      ]
    },
    
      	    
  #arrow in the knee
    {
      content: "arrow-in-the-knee.jpg",
      question_type: "Name this Meme",
      choices:[
        "I took an arrow in the knee",
        "Elder Scrolls Warrior",
        "Town Guard",
        "I'm a warrior man!"

      ]
    },
    
  	    
  #duck face
    {
      content: "duck_face.jpg",
      question_type: "Name this Meme",
      choices:[
        "Duck Face",
        "Jersey Shorelicious",
        "Fake Tan Tina",
        "DTF"

      ]
    },
    
  #bed intruder
    {
      content: "bed_intruder.jpg",
      question_type: "Name this Meme",
      choices:[
        "Bed Intruder Song",
        "Hide Your Kids, Hide Your Wife",
        "Snatching All Your People Up.",
        "Antoine"

      ]
    },
    
  #sheltering suburban mom
    {
      content: "sheltering-suburban-mom.jpg",
      question_type: "Name this Meme",
      choices:[
        "Sheltering Suburban Mom",
        "Minivan Mom",
        "Toddler Pagaent Mom",
        "Middle-Aged Haircut Mom"

      ]
    },
    
  #activated my trap card
    {
      content: "trap-card.jpg",
      question_type: "Name this Meme",
      choices:[
        "You Just Activated My Trap Card",
        "Magic The Gathering Kid",
        "Yu-Gi-Oh Card Kid",
        "You Just Got PWNED"

      ]
    },
      
  #bad pun raccoon
    {
      content: "bad_pun_raccoon.jpg",
      question_type: "Name this Meme",
      choices:[
        "Bad Pun Raccoon",
        "Silly Raccoon",
        "Rabid Raccoon",
        "Fail Raccoon"

      ]
    },
    
  #ermahgerd gersberms
    {
      content: "Ermahgerd_Gersberms.jpg",
      question_type: "Name this Meme",
      choices:[
        "Ermahgerd Gersberms!",
        "OMG I Love Books!",
        "Pigtail Meg",
        "OMG Goosebumps!"

      ]
    },
    
  #ridiculously photogenic guy
    {
      content: "ridiculously_photogenic_guy.jpg",
      question_type: "Name this Meme",
      choices:[
        "Ridiculously Photogenic Guy",
        "Handsome Marathon Man",
        "Ruggedly Good Lokking Race Running Guy",
        "I Won Because I Didn't Give Up"

      ]
    },
    
  #do you even lift
    {
      content: "do-you-even-lift.jpg",
      question_type: "Name this Meme",
      choices:[
        "Do You Even Lift?",
        "Muscle Man",
        "Roid Rage Guy",
        "Weight Room Master"

      ]
    },
    
  #like a boss
    {
      content: "like-a-boss.jpg",
      question_type: "Name this Meme",
      choices:[
        "Like A Boss",
        "In Charge Guy",
        "Like Mid-Level Management",
        "Yuppie Man"

      ]
    },
    
  #grumpy cat
    {
      content: "Grumpy-Cat.jpg",
      question_type: "Name this Meme",
      choices:[
        "Grumpy Cat",
        "Sad Cat",
        "Mad Cat",
        "Angry Kitty"

      ]
    },
    
  #disaster girl
    {
      content: "disaster-girl.jpg",
      question_type: "Name this Meme",
      choices:[
        "Disaster Girl",
        "Arsonist Girl",
        "Firestarter Girl",
        "Destruction Girl"

      ]
    },
    
  #hipster kitty
    {
      content: "hipster-kitty.jpg",
      question_type: "Name this Meme",
      choices:[
        "Hipster Kitty",
        "Too Cool For School Cat",
        "You've Never Heard of Them Kitty",
        "Ironic Kitty"

      ]
    },
    
  #i like turtles
    {
      content: "iliketurtles.jpg",
      question_type: "Name this Meme",
      choices:[
        "I Like Turtles",
        "I Like Zombies",
        "I Like Halloween",
        "I Like Frogs"

      ]
    },
    
  #baby godfather
    {
      content: "baby-godfather.jpg",
      question_type: "Name this Meme",
      choices:[
        "Baby Godfather",
        "Mafia Baby",
        "I Want My Nose Baby",
        "Angry Baby"

      ]
    },
    
  #confession bear
     {
       content: "confession-bear.jpg",
       question_type: "Name this Meme",
       choices:[
         "Confession Bear",
         "TMI Bear",
         "Nasty Bear",
         "Smelly Balls Bear"

       ]
     },

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



