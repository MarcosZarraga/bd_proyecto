class StudentContractsController < ApplicationController
  before_action :set_student_contract, only: [:show, :update, :destroy]

  # GET /student_contracts
  def index
    @student_contracts = StudentContract.all

    render json: {student_contracts:@student_contracts}
  end

  # GET /student_contracts/1
  def show
    render json: {student_contract:@student_contract}
  end

  # POST /student_contracts
  def create
    @student_contract = StudentContract.new(student_contract_params)

    if @student_contract.save
      render json: {student_contract:@student_contract}, status: :created, location: @student_contract
    else
      render json: @student_contract.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_contracts/1
  def update
    if @student_contract.update(student_contract_params)
      render json: {student_contract:@student_contract}
    else
      render json: @student_contract.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_contracts/1
  def destroy
    @student_contract.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_contract
      @student_contract = StudentContract.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_contract_params
      params.require(:student_contract).permit(:contract_id, :student_id, :start_date)
    end
end
