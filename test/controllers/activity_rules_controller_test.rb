require 'test_helper'

class ActivityRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_rule = activity_rules(:one)
  end

  test "should get index" do
    get activity_rules_url, as: :json
    assert_response :success
  end

  test "should create activity_rule" do
    assert_difference('ActivityRule.count') do
      post activity_rules_url, params: { activity_rule: { activity_type_id: @activity_rule.activity_type_id, capacity: @activity_rule.capacity, rule_id: @activity_rule.rule_id } }, as: :json
    end

    assert_response 201
  end

  test "should show activity_rule" do
    get activity_rule_url(@activity_rule), as: :json
    assert_response :success
  end

  test "should update activity_rule" do
    patch activity_rule_url(@activity_rule), params: { activity_rule: { activity_type_id: @activity_rule.activity_type_id, capacity: @activity_rule.capacity, rule_id: @activity_rule.rule_id } }, as: :json
    assert_response 200
  end

  test "should destroy activity_rule" do
    assert_difference('ActivityRule.count', -1) do
      delete activity_rule_url(@activity_rule), as: :json
    end

    assert_response 204
  end
end
