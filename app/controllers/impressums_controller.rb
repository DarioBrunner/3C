class ImpressumsController < ApplicationController
  before_action :set_impressum, only: [:show, :edit, :update, :destroy]

  # GET /impressums
  # GET /impressums.json
  def index
    @impressums = Impressum.all
  end

  # GET /impressums/1
  # GET /impressums/1.json
  def show
  end

  # GET /impressums/new
  def new
    @impressum = Impressum.new
  end

  # GET /impressums/1/edit
  def edit
  end

  # POST /impressums
  # POST /impressums.json
  def create
    @impressum = Impressum.new(impressum_params)

    respond_to do |format|
      if @impressum.save
        format.html { redirect_to @impressum, notice: 'Impressum was successfully created.' }
        format.json { render :show, status: :created, location: @impressum }
      else
        format.html { render :new }
        format.json { render json: @impressum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impressums/1
  # PATCH/PUT /impressums/1.json
  def update
    respond_to do |format|
      if @impressum.update(impressum_params)
        format.html { redirect_to @impressum, notice: 'Impressum was successfully updated.' }
        format.json { render :show, status: :ok, location: @impressum }
      else
        format.html { render :edit }
        format.json { render json: @impressum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impressums/1
  # DELETE /impressums/1.json
  def destroy
    @impressum.destroy
    respond_to do |format|
      format.html { redirect_to impressums_url, notice: 'Impressum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impressum
      @impressum = Impressum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impressum_params
      params.require(:impressum).permit(:context)
    end
end
