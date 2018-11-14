class ScheduleTournamentsController < ApplicationController
  before_action :set_schedule_tournament, only: [:show, :edit, :update, :destroy]

  # GET /schedule_tournaments
  # GET /schedule_tournaments.json
  def index
    @schedule_tournaments = ScheduleTournament.all
  end

  # GET /schedule_tournaments/1
  # GET /schedule_tournaments/1.json
  def show
  end

  # GET /schedule_tournaments/new
  def new
    @schedule_tournament = ScheduleTournament.new
  end

  # GET /schedule_tournaments/1/edit
  def edit
  end

  # POST /schedule_tournaments
  # POST /schedule_tournaments.json
  def create
    @schedule_tournament = ScheduleTournament.new(schedule_tournament_params)

    respond_to do |format|
      if @schedule_tournament.save
        format.html { redirect_to @schedule_tournament, notice: 'Schedule tournament was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_tournament }
      else
        format.html { render :new }
        format.json { render json: @schedule_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_tournaments/1
  # PATCH/PUT /schedule_tournaments/1.json
  def update
    respond_to do |format|
      if @schedule_tournament.update(schedule_tournament_params)
        format.html { redirect_to @schedule_tournament, notice: 'Schedule tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_tournament }
      else
        format.html { render :edit }
        format.json { render json: @schedule_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_tournaments/1
  # DELETE /schedule_tournaments/1.json
  def destroy
    @schedule_tournament.destroy
    respond_to do |format|
      format.html { redirect_to schedule_tournaments_url, notice: 'Schedule tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_tournament
      @schedule_tournament = ScheduleTournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_tournament_params
      params.require(:schedule_tournament).permit(:user_id, :tournament_id)
    end
end
