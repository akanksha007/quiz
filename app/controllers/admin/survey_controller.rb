class Admin::SurveyController < ApplicationController

  def create

  end

  def new
    @survey_tool = SurveyTool.new
  end
end
