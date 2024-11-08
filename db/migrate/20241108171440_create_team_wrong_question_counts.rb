class CreateTeamWrongQuestionCounts < ActiveRecord::Migration[7.0]
  def change
    create_table :team_wrong_question_counts do |t|
      t.references :team, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.integer :x_count, default: 0

      t.timestamps
    end
  end
end
