require 'test_helper'

class StudentContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_contract = student_contracts(:one)
  end

  test "should get index" do
    get student_contracts_url, as: :json
    assert_response :success
  end

  test "should create student_contract" do
    assert_difference('StudentContract.count') do
      post student_contracts_url, params: { student_contract: { contract_id: @student_contract.contract_id, start_date: @student_contract.start_date, student_id: @student_contract.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show student_contract" do
    get student_contract_url(@student_contract), as: :json
    assert_response :success
  end

  test "should update student_contract" do
    patch student_contract_url(@student_contract), params: { student_contract: { contract_id: @student_contract.contract_id, start_date: @student_contract.start_date, student_id: @student_contract.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy student_contract" do
    assert_difference('StudentContract.count', -1) do
      delete student_contract_url(@student_contract), as: :json
    end

    assert_response 204
  end
end
