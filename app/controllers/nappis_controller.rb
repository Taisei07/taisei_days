class NappisController < ApplicationController
  before_action :set_nappi, only: [:show, :edit, :update, :destroy]

  # GET /nappis
  # GET /nappis.json
  def index
    @nappis = Nappi.all
  end

  # GET /nappis/1
  # GET /nappis/1.json
  def show
  end

  # GET /nappis/new
  def new
    @nappi = Nappi.new
  end

  # GET /nappis/1/edit
  def edit
  end

  # POST /nappis
  # POST /nappis.json
  def create
    @nappi = Nappi.new(nappi_params)

    respond_to do |format|
      if @nappi.save
        format.html { redirect_to @nappi, notice: 'Nappi was successfully created.' }
        format.json { render :show, status: :created, location: @nappi }
      else
        format.html { render :new }
        format.json { render json: @nappi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nappis/1
  # PATCH/PUT /nappis/1.json
  def update
    respond_to do |format|
      if @nappi.update(nappi_params)
        format.html { redirect_to @nappi, notice: 'Nappi was successfully updated.' }
        format.json { render :show, status: :ok, location: @nappi }
      else
        format.html { render :edit }
        format.json { render json: @nappi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nappis/1
  # DELETE /nappis/1.json
  def destroy
    @nappi.destroy
    respond_to do |format|
      format.html { redirect_to nappis_url, notice: 'Nappi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nappi
      @nappi = Nappi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nappi_params
      params.require(:nappi).permit(:year, :age)
    end
end
