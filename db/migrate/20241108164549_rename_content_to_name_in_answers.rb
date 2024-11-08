class RenameContentToNameInAnswers < ActiveRecord::Migration[7.0]
  def change
    rename_column :answers, :content, :name
  end
end
