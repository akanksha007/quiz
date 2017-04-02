class Admin::SurveysController < ApplicationController

  def create
    @survey_tool = SurveyTool.new
    @survey_tool.name = params[:survey_tool][:name]
    @survey_tool.save
  end

  def new
    @survey_tool = SurveyTool.new
  end

  def index
    @survey_tools = SurveyTool.all
  end

  def edit
    @survey_tool = SurveyTool.find(params[:id])
  end

  def update
    @survey_tool = SurveyTool.find(params[:id])
    @survey_tool.update(name: params[:survey_tool][:name])
  end

  def destroy
    @survey_tool = SurveyTool.find(params[:id])
    @survey_tool.destroy
  end
end
