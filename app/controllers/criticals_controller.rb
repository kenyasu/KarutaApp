class CriticalsController < ApplicationController
  before_action :set_critical, only: [:show, :edit, :update, :destroy]

  # GET /criticals
  # GET /criticals.json
  def index
    @criticals = Critical.all
  end

  # GET /criticals/1
  # GET /criticals/1.json
  def show
  end

  # GET /criticals/new
  def new
    @critical = Critical.new
  end

  # GET /criticals/1/edit
  def edit
  end

  # POST /criticals
  # POST /criticals.json
  def create
    @critical = Critical.new(critical_params)

    respond_to do |format|
      if @critical.save
        format.html { redirect_to @critical, notice: 'Critical was successfully created.' }
        format.json { render :show, status: :created, location: @critical }
      else
        format.html { render :new }
        format.json { render json: @critical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criticals/1
  # PATCH/PUT /criticals/1.json
  def update
    respond_to do |format|
      if @critical.update(critical_params)
        format.html { redirect_to @critical, notice: 'Critical was successfully updated.' }
        format.json { render :show, status: :ok, location: @critical }
      else
        format.html { render :edit }
        format.json { render json: @critical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criticals/1
  # DELETE /criticals/1.json
  def destroy
    @critical.destroy
    respond_to do |format|
      format.html { redirect_to criticals_url, notice: 'Critical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_critical
      @critical = Critical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def critical_params
      params.require(:critical).permit(:result_id, :karuta_id, :field_id)
    end
end
