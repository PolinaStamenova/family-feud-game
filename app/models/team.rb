class Team < ApplicationRecord
  belongs_to :game
  has_one :team_wrong_question_count
end
