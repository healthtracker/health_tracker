class ConsumedCalsController < ApplicationController
  before_action :set_consumed_cal, only: [:show, :edit, :update, :destroy]

  # GET /consumed_cals
  # GET /consumed_cals.json
  def index
    @consumed_cals = ConsumedCal.all
  end

  # GET /consumed_cals/1
  # GET /consumed_cals/1.json
  def show
  end

  # GET /consumed_cals/new
  def new
    @consumed_cal = ConsumedCal.new
  end

  # GET /consumed_cals/1/edit
  def edit
  end

  # POST /consumed_cals
  # POST /consumed_cals.json
  def create
    @consumed_cal = ConsumedCal.new(consumed_cal_params)

    respond_to do |format|
      if @consumed_cal.save
        format.html { redirect_to @consumed_cal, notice: 'Consumed cal was successfully created.' }
        format.json { render :show, status: :created, location: @consumed_cal }
      else
        format.html { render :new }
        format.json { render json: @consumed_cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumed_cals/1
  # PATCH/PUT /consumed_cals/1.json
  def update
    respond_to do |format|
      if @consumed_cal.update(consumed_cal_params)
        format.html { redirect_to @consumed_cal, notice: 'Consumed cal was successfully updated.' }
        format.json { render :show, status: :ok, location: @consumed_cal }
      else
        format.html { render :edit }
        format.json { render json: @consumed_cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumed_cals/1
  # DELETE /consumed_cals/1.json
  def destroy
    @consumed_cal.destroy
    respond_to do |format|
      format.html { redirect_to consumed_cals_url, notice: 'Consumed cal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumed_cal
      @consumed_cal = ConsumedCal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumed_cal_params
      params.require(:consumed_cal).permit(:calories, :calories_on)
    end
end
