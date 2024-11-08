class Game < ApplicationRecord
  has_many :teams
  has_many :rounds

  after_create_commit :create_rounds

  def create_rounds
    5.times do |i|
      self.rounds.create(number: i + 1)
    end
  end
end
