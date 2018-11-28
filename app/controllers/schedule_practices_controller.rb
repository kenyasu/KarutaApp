class SchedulePracticesController < ApplicationController
  before_action :set_schedule_practice, only: [:show, :edit, :update, :destroy]

  # GET /schedule_practices
  # GET /schedule_practices.json
  def index
    @schedule_practices = SchedulePractice.all
  end

  # GET /schedule_practices/1
  # GET /schedule_practices/1.json
  def show
  end

  # GET /schedule_practices/new
  def new
    @schedule_practice = SchedulePractice.new
  end

  # GET /schedule_practices/1/edit
  def edit
  end

  # POST /schedule_practices
  # POST /schedule_practices.json
  def create
    @schedule_practice = SchedulePractice.new(schedule_practice_params)

    respond_to do |format|
      if @schedule_practice.save
        format.html { redirect_to @schedule_practice, notice: 'Schedule practice was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_practice }
      else
        format.html { render :new }
        format.json { render json: @schedule_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_practices/1
  # PATCH/PUT /schedule_practices/1.json
  def update
    respond_to do |format|
      if @schedule_practice.update(schedule_practice_params)
        format.html { redirect_to @schedule_practice, notice: 'Schedule practice was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_practice }
      else
        format.html { render :edit }
        format.json { render json: @schedule_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_practices/1
  # DELETE /schedule_practices/1.json
  def destroy
    @schedule_practice.destroy
    respond_to do |format|
      format.html { redirect_to schedule_practices_url, notice: 'Schedule practice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_practice
      @schedule_practice = SchedulePractice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_practice_params
      params.require(:schedule_practice).permit(:start_time, :place, :note, :user_id)
    end
end
