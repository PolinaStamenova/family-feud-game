class AddCollectedPointsToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :collected_points, :integer, default: 0
  end
end
