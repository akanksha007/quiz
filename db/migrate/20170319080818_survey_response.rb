class SurveyResponse < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_responses do |t|
    end
    add_reference :survey_responses, :user, index: true
    add_reference :survey_responses, :survey_tools, index: true
  end
end
