class MybudgetsController < ApplicationController
  before_action :set_mybudget, only: [:show, :edit, :update, :destroy]

  # GET /mybudgets
  # GET /mybudgets.json
  def index
    @mybudgets = Mybudget.all
  end

  # GET /mybudgets/1
  # GET /mybudgets/1.json
  def show
  end

  # GET /mybudgets/new
  def new
    @mybudget = Mybudget.new
  end

  # GET /mybudgets/1/edit
  def edit
  end

  # POST /mybudgets
  # POST /mybudgets.json
  def create
    @mybudget = Mybudget.new(mybudget_params)

    respond_to do |format|
      if @mybudget.save
        format.html { redirect_to @mybudget, notice: 'Mybudget was successfully created.' }
        format.json { render :show, status: :created, location: @mybudget }
      else
        format.html { render :new }
        format.json { render json: @mybudget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mybudgets/1
  # PATCH/PUT /mybudgets/1.json
  def update
    respond_to do |format|
      if @mybudget.update(mybudget_params)
        format.html { redirect_to @mybudget, notice: 'Mybudget was successfully updated.' }
        format.json { render :show, status: :ok, location: @mybudget }
      else
        format.html { render :edit }
        format.json { render json: @mybudget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybudgets/1
  # DELETE /mybudgets/1.json
  def destroy
    @mybudget.destroy
    respond_to do |format|
      format.html { redirect_to mybudgets_url, notice: 'Mybudget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mybudget
      @mybudget = Mybudget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mybudget_params
      params.require(:mybudget).permit(:budgetname, :amount, :year)
    end
end
