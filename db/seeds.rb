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
question = [
	{
		content: "In a restaurant, she asks to switch chairs with you(her boyfriend) bacuse:",
		question_type:"Match this Meme",
		choices:[
			"Your overly attached gf is upset that you can see way too many other girls from where you're sitting, and wants to create a human shield between you and them,",
			"It's a little bit drafty where she's sitting, and she forgot her sweater.",
			"She knows you prefer not sitting with your back facing the door and is trying to be considerate",
			"She would prefer to be closer to the restroom so she doesn't have to ask you move if she needs to run to the ladies room. "
		]
	},

	{
		content: "This kid is super excited because:",
		question_type: "Match this Meme",
		choices:[
			"He was the 1,000,000 visitor to this site and won a free iPad for the 2nd time that day.",
			"He finished his term paper on the effects of whaling in Antartica a whole day early",
			"He leveled up in World of Warcraft",
			"He successefully wrote a complex algorithm for the Entscheidungsproblem "
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



