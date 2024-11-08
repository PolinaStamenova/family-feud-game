class AddRoundToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :round, null: false, foreign_key: true
  end
end
