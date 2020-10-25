class DailyreportsController < ApplicationController
  before_action :set_dailyreport, only: [:show, :edit, :update, :destroy]

  # GET /dailyreports
  # GET /dailyreports.json
  def index
    @dailyreports = Dailyreport.all
  end

  # GET /dailyreports/1
  # GET /dailyreports/1.json
  def show
  end

  # GET /dailyreports/new
  def new
    @dailyreport = Dailyreport.new
  end

  # GET /dailyreports/1/edit
  def edit
  end

  # POST /dailyreports
  # POST /dailyreports.json
  def create
    @dailyreport = Dailyreport.new(dailyreport_params)

    respond_to do |format|
      if @dailyreport.save
        format.html { redirect_to @dailyreport, notice: 'Dailyreport was successfully created.' }
        format.json { render :show, status: :created, location: @dailyreport }
      else
        format.html { render :new }
        format.json { render json: @dailyreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dailyreports/1
  # PATCH/PUT /dailyreports/1.json
  def update
    respond_to do |format|
      if @dailyreport.update(dailyreport_params)
        format.html { redirect_to @dailyreport, notice: 'Dailyreport was successfully updated.' }
        format.json { render :show, status: :ok, location: @dailyreport }
      else
        format.html { render :edit }
        format.json { render json: @dailyreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailyreports/1
  # DELETE /dailyreports/1.json
  def destroy
    @dailyreport.destroy
    respond_to do |format|
      format.html { redirect_to dailyreports_url, notice: 'Dailyreport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dailyreport
      @dailyreport = Dailyreport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dailyreport_params
      params.require(:dailyreport).permit(:title, :report)
    end
end
