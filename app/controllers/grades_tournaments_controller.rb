class GradesTournamentsController < ApplicationController
  before_action :set_grades_tournament, only: [:show, :edit, :update, :destroy]

  # GET /grades_tournaments
  # GET /grades_tournaments.json
  def index
    @grades_tournaments = GradesTournament.all
  end

  # GET /grades_tournaments/1
  # GET /grades_tournaments/1.json
  def show
  end

  # GET /grades_tournaments/new
  def new
    @grades_tournament = GradesTournament.new
  end

  # GET /grades_tournaments/1/edit
  def edit
  end

  # POST /grades_tournaments
  # POST /grades_tournaments.json
  def create
    @grades_tournament = GradesTournament.new(grades_tournament_params)

    respond_to do |format|
      if @grades_tournament.save
        format.html { redirect_to @grades_tournament, notice: 'Grades tournament was successfully created.' }
        format.json { render :show, status: :created, location: @grades_tournament }
      else
        format.html { render :new }
        format.json { render json: @grades_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grades_tournaments/1
  # PATCH/PUT /grades_tournaments/1.json
  def update
    respond_to do |format|
      if @grades_tournament.update(grades_tournament_params)
        format.html { redirect_to @grades_tournament, notice: 'Grades tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @grades_tournament }
      else
        format.html { render :edit }
        format.json { render json: @grades_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades_tournaments/1
  # DELETE /grades_tournaments/1.json
  def destroy
    @grades_tournament.destroy
    respond_to do |format|
      format.html { redirect_to grades_tournaments_url, notice: 'Grades tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grades_tournament
      @grades_tournament = GradesTournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grades_tournament_params
      params.require(:grades_tournament).permit(:grades_id, :tournament_id)
    end
end
