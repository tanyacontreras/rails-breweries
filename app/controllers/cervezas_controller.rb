class CervezasController < ApplicationController
  before_action :set_cerveza, only: [:show, :edit, :update, :destroy]

  # GET /cervezas
  # GET /cervezas.json
  def index
    @cervezas = Cerveza.all
  end

  # GET /cervezas/1
  # GET /cervezas/1.json
  def show
  end

  # GET /cervezas/new
  def new
    @cerveza = Cerveza.new
  end

  # GET /cervezas/1/edit
  def edit
  end

  # POST /cervezas
  # POST /cervezas.json
  def create
    @cerveza = Cerveza.new(cerveza_params)

    respond_to do |format|
      if @cerveza.save
        format.html { redirect_to @cerveza, notice: 'Cerveza was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cerveza }
      else
        format.html { render action: 'new' }
        format.json { render json: @cerveza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cervezas/1
  # PATCH/PUT /cervezas/1.json
  def update
    respond_to do |format|
      if @cerveza.update(cerveza_params)
        format.html { redirect_to @cerveza, notice: 'Cerveza was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cerveza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cervezas/1
  # DELETE /cervezas/1.json
  def destroy
    @cerveza.destroy
    respond_to do |format|
      format.html { redirect_to cervezas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cerveza
      @cerveza = Cerveza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cerveza_params
      params.require(:cerveza).permit(:name, :brewer, :type, :price, :brewery, :ABV)
    end
end
