class Question < ActiveRecord::Base
  has_many :choices
  attr_accessible :content, :correct_choice_id, :type
end
