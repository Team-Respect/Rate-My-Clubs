class Assignments::A4ThanhQuan::TestsController < ApplicationController
  before_action :set_assignments_a4_thanh_quan_test, only: %i[ show edit update destroy ]

  # GET /assignments/a4_thanh_quan/tests or /assignments/a4_thanh_quan/tests.json
  def index
    @assignments_a4_thanh_quan_tests = Assignments::A4ThanhQuan::Test.all
  end

  # GET /assignments/a4_thanh_quan/tests/1 or /assignments/a4_thanh_quan/tests/1.json
  def show
  end

  # GET /assignments/a4_thanh_quan/tests/new
  def new
    @assignments_a4_thanh_quan_test = Assignments::A4ThanhQuan::Test.new
  end

  # GET /assignments/a4_thanh_quan/tests/1/edit
  def edit
  end

  # POST /assignments/a4_thanh_quan/tests or /assignments/a4_thanh_quan/tests.json
  def create
    @assignments_a4_thanh_quan_test = Assignments::A4ThanhQuan::Test.new(assignments_a4_thanh_quan_test_params)

    respond_to do |format|
      if @assignments_a4_thanh_quan_test.save
        format.html { redirect_to @assignments_a4_thanh_quan_test, notice: "Test was successfully created." }
        format.json { render :show, status: :created, location: @assignments_a4_thanh_quan_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assignments_a4_thanh_quan_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignments/a4_thanh_quan/tests/1 or /assignments/a4_thanh_quan/tests/1.json
  def update
    respond_to do |format|
      if @assignments_a4_thanh_quan_test.update(assignments_a4_thanh_quan_test_params)
        format.html { redirect_to @assignments_a4_thanh_quan_test, notice: "Test was successfully updated." }
        format.json { render :show, status: :ok, location: @assignments_a4_thanh_quan_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assignments_a4_thanh_quan_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/a4_thanh_quan/tests/1 or /assignments/a4_thanh_quan/tests/1.json
  def destroy
    @assignments_a4_thanh_quan_test.destroy
    respond_to do |format|
      format.html { redirect_to assignments_a4_thanh_quan_tests_url, notice: "Test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignments_a4_thanh_quan_test
      @assignments_a4_thanh_quan_test = Assignments::A4ThanhQuan::Test.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assignments_a4_thanh_quan_test_params
      params.require(:assignments_a4_thanh_quan_test).permit(:image)
    end
end
