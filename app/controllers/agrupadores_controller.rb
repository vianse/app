class AgrupadoresController < ApplicationController
  before_action :set_agrupadore, only: [:show, :edit, :update, :destroy]

  # GET /agrupadores
  # GET /agrupadores.json
  def index
    @agrupadores = Agrupadore.all
  end

  # GET /agrupadores/1
  # GET /agrupadores/1.json
  def show
  end

  # GET /agrupadores/new
  def new
    @agrupadore = Agrupadore.new
  end

  # GET /agrupadores/1/edit
  def edit
  end

  # POST /agrupadores
  # POST /agrupadores.json
  def create
    @agrupadore = Agrupadore.new(agrupadore_params)

    respond_to do |format|
      if @agrupadore.save
        format.html { redirect_to @agrupadore, notice: 'Agrupadore was successfully created.' }
        format.json { render :show, status: :created, location: @agrupadore }
      else
        format.html { render :new }
        format.json { render json: @agrupadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agrupadores/1
  # PATCH/PUT /agrupadores/1.json
  def update
    respond_to do |format|
      if @agrupadore.update(agrupadore_params)
        format.html { redirect_to @agrupadore, notice: 'Agrupadore was successfully updated.' }
        format.json { render :show, status: :ok, location: @agrupadore }
      else
        format.html { render :edit }
        format.json { render json: @agrupadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agrupadores/1
  # DELETE /agrupadores/1.json
  def destroy
    @agrupadore.destroy
    respond_to do |format|
      format.html { redirect_to agrupadores_url, notice: 'Agrupadore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agrupadore
      @agrupadore = Agrupadore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agrupadore_params
      params.require(:agrupadore).permit(:titulo, :idioma_id)
    end
end
