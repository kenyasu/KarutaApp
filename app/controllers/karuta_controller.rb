class KarutaController < ApplicationController
  before_action :set_karutum, only: [:show, :edit, :update, :destroy]

  # GET /karuta
  # GET /karuta.json
  def index
    @karuta = Karutum.all
  end

  # GET /karuta/1
  # GET /karuta/1.json
  def show
  end

  # GET /karuta/new
  def new
    @karutum = Karutum.new
  end

  # GET /karuta/1/edit
  def edit
  end

  # POST /karuta
  # POST /karuta.json
  def create
    @karutum = Karutum.new(karutum_params)

    respond_to do |format|
      if @karutum.save
        format.html { redirect_to @karutum, notice: 'Karutum was successfully created.' }
        format.json { render :show, status: :created, location: @karutum }
      else
        format.html { render :new }
        format.json { render json: @karutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karuta/1
  # PATCH/PUT /karuta/1.json
  def update
    respond_to do |format|
      if @karutum.update(karutum_params)
        format.html { redirect_to @karutum, notice: 'Karutum was successfully updated.' }
        format.json { render :show, status: :ok, location: @karutum }
      else
        format.html { render :edit }
        format.json { render json: @karutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karuta/1
  # DELETE /karuta/1.json
  def destroy
    @karutum.destroy
    respond_to do |format|
      format.html { redirect_to karuta_url, notice: 'Karutum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karutum
      @karutum = Karutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def karutum_params
      params.require(:karutum).permit(:waka)
    end
end
