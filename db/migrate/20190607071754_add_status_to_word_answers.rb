class AddStatusToWordAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :word_answers, :status, :string
  end
end
