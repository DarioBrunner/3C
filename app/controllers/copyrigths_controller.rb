class CopyrigthsController < ApplicationController
  before_action :set_copyrigth, only: [:show, :edit, :update, :destroy]

  # GET /copyrigths
  # GET /copyrigths.json
  def index
    @copyrigths = Copyrigth.all
  end

  # GET /copyrigths/1
  # GET /copyrigths/1.json
  def show
  end

  # GET /copyrigths/new
  def new
    @copyrigth = Copyrigth.new
  end

  # GET /copyrigths/1/edit
  def edit
  end

  # POST /copyrigths
  # POST /copyrigths.json
  def create
    @copyrigth = Copyrigth.new(copyrigth_params)

    respond_to do |format|
      if @copyrigth.save
        format.html { redirect_to @copyrigth, notice: 'Copyrigth was successfully created.' }
        format.json { render :show, status: :created, location: @copyrigth }
      else
        format.html { render :new }
        format.json { render json: @copyrigth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copyrigths/1
  # PATCH/PUT /copyrigths/1.json
  def update
    respond_to do |format|
      if @copyrigth.update(copyrigth_params)
        format.html { redirect_to @copyrigth, notice: 'Copyrigth was successfully updated.' }
        format.json { render :show, status: :ok, location: @copyrigth }
      else
        format.html { render :edit }
        format.json { render json: @copyrigth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copyrigths/1
  # DELETE /copyrigths/1.json
  def destroy
    @copyrigth.destroy
    respond_to do |format|
      format.html { redirect_to copyrigths_url, notice: 'Copyrigth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copyrigth
      @copyrigth = Copyrigth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copyrigth_params
      params.require(:copyrigth).permit(:copy)
    end
end
