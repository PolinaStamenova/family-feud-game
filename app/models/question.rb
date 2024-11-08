class Question < ApplicationRecord
  belongs_to :round
  has_many :answers
  has_one :team_wrong_question_count
  has_one :game, through: :round
end
