class RenameContentToNameInQuestions < ActiveRecord::Migration[7.0]
  def change
    rename_column :questions, :content, :name
  end
end
