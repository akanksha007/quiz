class Answer < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :name
    end
    add_reference :answers, :questions, index: true
    add_reference :answers, :survey_responses, index: true
  end
end
