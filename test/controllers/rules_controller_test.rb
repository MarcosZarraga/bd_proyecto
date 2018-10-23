require 'test_helper'

class RulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rule = rules(:one)
  end

  test "should get index" do
    get rules_url, as: :json
    assert_response :success
  end

  test "should create rule" do
    assert_difference('Rule.count') do
      post rules_url, params: { rule: { max_students: @rule.max_students, school_id: @rule.school_id } }, as: :json
    end

    assert_response 201
  end

  test "should show rule" do
    get rule_url(@rule), as: :json
    assert_response :success
  end

  test "should update rule" do
    patch rule_url(@rule), params: { rule: { max_students: @rule.max_students, school_id: @rule.school_id } }, as: :json
    assert_response 200
  end

  test "should destroy rule" do
    assert_difference('Rule.count', -1) do
      delete rule_url(@rule), as: :json
    end

    assert_response 204
  end
end
