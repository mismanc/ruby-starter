class SurveysController < ApplicationController
  protect_from_forgery except: :create_feedback
  before_action :set_survey, only: %i[ show edit update destroy ]

  # GET /surveys or /surveys.json
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1 or /surveys/1.json
  def show
    @survey = Survey.find(params[:id].to_s)
    render :json => @survey.to_json(:except => [:created_at, :updated_at], :include => { :questions => { :include => { :options => { :except => [:created_at, :updated_at, :question_id] } }, :except => [:created_at, :updated_at, :survey_id] } })
  end

  def create_feedback
    if params[:question_id].nil?
      render json: { error: 'Question field is required ' }, status: 423
      return
    end
    @survey = Survey.find(params[:id].to_s)
    @feedback = Feedback.new(:survey => @survey)
    if @feedback.save
      @question = Question.find(params[:question_id])
      if @question.text? and params[:body].nil?
        render json: { error: 'Body text required ' }, status: 423
      elsif @question.choice? and params[:option_id].nil?
        render json: { error: 'Option required ' }, status: 423
      else
        @response = Response.create({ feedback: @feedback, option_id: params[:option_id], body: params[:body], question: @question  })
        render :json => @response
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_survey
    @survey = Survey.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'No survey found by this: ' + params[:id].to_s }
  end

  # Only allow a list of trusted parameters through.
  def response_params
    params.permit(:question_id, :option_id, :id, :body)
  end
end
