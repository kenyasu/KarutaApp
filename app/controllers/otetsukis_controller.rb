class OtetsukisController < ApplicationController
  before_action :set_otetsuki, only: [:show, :edit, :update, :destroy]

  # GET /otetsukis
  # GET /otetsukis.json
  def index
    @otetsukis = Otetsuki.all
  end

  # GET /otetsukis/1
  # GET /otetsukis/1.json
  def show
  end

  # GET /otetsukis/new
  def new
    @otetsuki = Otetsuki.new
  end

  # GET /otetsukis/1/edit
  def edit
  end

  # POST /otetsukis
  # POST /otetsukis.json
  def create
    @otetsuki = Otetsuki.new(otetsuki_params)

    respond_to do |format|
      if @otetsuki.save
        format.html { redirect_to @otetsuki, notice: 'Otetsuki was successfully created.' }
        format.json { render :show, status: :created, location: @otetsuki }
      else
        format.html { render :new }
        format.json { render json: @otetsuki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otetsukis/1
  # PATCH/PUT /otetsukis/1.json
  def update
    respond_to do |format|
      if @otetsuki.update(otetsuki_params)
        format.html { redirect_to @otetsuki, notice: 'Otetsuki was successfully updated.' }
        format.json { render :show, status: :ok, location: @otetsuki }
      else
        format.html { render :edit }
        format.json { render json: @otetsuki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otetsukis/1
  # DELETE /otetsukis/1.json
  def destroy
    @otetsuki.destroy
    respond_to do |format|
      format.html { redirect_to otetsukis_url, notice: 'Otetsuki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otetsuki
      @otetsuki = Otetsuki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otetsuki_params
      params.require(:otetsuki).permit(:result_id, :karuta_id, :field_id)
    end
end
