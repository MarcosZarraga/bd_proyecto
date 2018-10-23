class ActivityRulesController < ApplicationController
  before_action :set_activity_rule, only: [:show, :update, :destroy]

  # GET /activity_rules
  def index
    @activity_rules = ActivityRule.all

    render json: {activity_rules:@activity_rules}
  end

  # GET /activity_rules/1
  def show
    render json: {activity_rule:@activity_rule}
  end

  # POST /activity_rules
  def create
    @activity_rule = ActivityRule.new(activity_rule_params)

    if @activity_rule.save
      render json: {activity_rule:@activity_rule}, status: :created, location: @activity_rule
    else
      render json: @activity_rule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activity_rules/1
  def update
    if @activity_rule.update(activity_rule_params)
      render json: {activity_rule:@activity_rule}
    else
      render json: @activity_rule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activity_rules/1
  def destroy
    @activity_rule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_rule
      @activity_rule = ActivityRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def activity_rule_params
      params.require(:activity_rule).permit(:capacity, :activity_type_id, :rule_id)
    end
end
