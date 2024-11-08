class TeamWrongQuestionCount < ApplicationRecord
  belongs_to :team
  belongs_to :question
end
