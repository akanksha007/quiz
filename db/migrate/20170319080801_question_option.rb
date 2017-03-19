class QuestionOption < ActiveRecord::Migration[5.0]
  def change
    create_table :question_options do |t|
      t.string :name
    end
    add_reference :question_options, :questions, index: true
  end
end
