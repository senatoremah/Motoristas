class MotoristaController < ApplicationController
  before_action :set_motoristum, only: [:show, :edit, :update, :destroy]

  # GET /motorista
  # GET /motorista.json
  def index
    @motorista = Motoristum.all
  end

  # GET /motorista/1
  # GET /motorista/1.json
  def show
  end

  # GET /motorista/new
  def new
    @motoristum = Motoristum.new
  end

  # GET /motorista/1/edit
  def edit
  end

  # POST /motorista
  # POST /motorista.json
  def create
    @motoristum = Motoristum.new(motoristum_params)

    respond_to do |format|
      if @motoristum.save
        format.html { redirect_to @motoristum, notice: 'Motoristum was successfully created.' }
        format.json { render :show, status: :created, location: @motoristum }
      else
        format.html { render :new }
        format.json { render json: @motoristum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motorista/1
  # PATCH/PUT /motorista/1.json
  def update
    respond_to do |format|
      if @motoristum.update(motoristum_params)
        format.html { redirect_to @motoristum, notice: 'Motoristum was successfully updated.' }
        format.json { render :show, status: :ok, location: @motoristum }
      else
        format.html { render :edit }
        format.json { render json: @motoristum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motorista/1
  # DELETE /motorista/1.json
  def destroy
    @motoristum.destroy
    respond_to do |format|
      format.html { redirect_to motorista_url, notice: 'Motoristum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motoristum
      @motoristum = Motoristum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motoristum_params
      params.require(:motoristum).permit(:name, :cpf, :tipo_de_caminhao, :ano, :marca)
    end
end
