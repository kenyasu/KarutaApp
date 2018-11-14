class AvoidancesController < ApplicationController
  before_action :set_avoidance, only: [:show, :edit, :update, :destroy]

  # GET /avoidances
  # GET /avoidances.json
  def index
    @avoidances = Avoidance.all
  end

  # GET /avoidances/1
  # GET /avoidances/1.json
  def show
  end

  # GET /avoidances/new
  def new
    @avoidance = Avoidance.new
  end

  # GET /avoidances/1/edit
  def edit
  end

  # POST /avoidances
  # POST /avoidances.json
  def create
    @avoidance = Avoidance.new(avoidance_params)

    respond_to do |format|
      if @avoidance.save
        format.html { redirect_to @avoidance, notice: 'Avoidance was successfully created.' }
        format.json { render :show, status: :created, location: @avoidance }
      else
        format.html { render :new }
        format.json { render json: @avoidance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avoidances/1
  # PATCH/PUT /avoidances/1.json
  def update
    respond_to do |format|
      if @avoidance.update(avoidance_params)
        format.html { redirect_to @avoidance, notice: 'Avoidance was successfully updated.' }
        format.json { render :show, status: :ok, location: @avoidance }
      else
        format.html { render :edit }
        format.json { render json: @avoidance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avoidances/1
  # DELETE /avoidances/1.json
  def destroy
    @avoidance.destroy
    respond_to do |format|
      format.html { redirect_to avoidances_url, notice: 'Avoidance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avoidance
      @avoidance = Avoidance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avoidance_params
      params.require(:avoidance).permit(:result_id, :karuta_id)
    end
end
