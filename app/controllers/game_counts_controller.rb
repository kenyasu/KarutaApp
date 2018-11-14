class GameCountsController < ApplicationController
  before_action :set_game_count, only: [:show, :edit, :update, :destroy]

  # GET /game_counts
  # GET /game_counts.json
  def index
    @game_counts = GameCount.all
  end

  # GET /game_counts/1
  # GET /game_counts/1.json
  def show
  end

  # GET /game_counts/new
  def new
    @game_count = GameCount.new
  end

  # GET /game_counts/1/edit
  def edit
  end

  # POST /game_counts
  # POST /game_counts.json
  def create
    @game_count = GameCount.new(game_count_params)

    respond_to do |format|
      if @game_count.save
        format.html { redirect_to @game_count, notice: 'Game count was successfully created.' }
        format.json { render :show, status: :created, location: @game_count }
      else
        format.html { render :new }
        format.json { render json: @game_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_counts/1
  # PATCH/PUT /game_counts/1.json
  def update
    respond_to do |format|
      if @game_count.update(game_count_params)
        format.html { redirect_to @game_count, notice: 'Game count was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_count }
      else
        format.html { render :edit }
        format.json { render json: @game_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_counts/1
  # DELETE /game_counts/1.json
  def destroy
    @game_count.destroy
    respond_to do |format|
      format.html { redirect_to game_counts_url, notice: 'Game count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_count
      @game_count = GameCount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_count_params
      params.require(:game_count).permit(:name)
    end
end
