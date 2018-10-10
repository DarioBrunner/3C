class DataprotectionsController < ApplicationController
  before_action :set_dataprotection, only: [:show, :edit, :update, :destroy]

  # GET /dataprotections
  # GET /dataprotections.json
  def index
    @dataprotections = Dataprotection.all
  end

  # GET /dataprotections/1
  # GET /dataprotections/1.json
  def show
  end

  # GET /dataprotections/new
  def new
    @dataprotection = Dataprotection.new
  end

  # GET /dataprotections/1/edit
  def edit
  end

  # POST /dataprotections
  # POST /dataprotections.json
  def create
    @dataprotection = Dataprotection.new(dataprotection_params)

    respond_to do |format|
      if @dataprotection.save
        format.html { redirect_to @dataprotection, notice: 'Dataprotection was successfully created.' }
        format.json { render :show, status: :created, location: @dataprotection }
      else
        format.html { render :new }
        format.json { render json: @dataprotection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dataprotections/1
  # PATCH/PUT /dataprotections/1.json
  def update
    respond_to do |format|
      if @dataprotection.update(dataprotection_params)
        format.html { redirect_to @dataprotection, notice: 'Dataprotection was successfully updated.' }
        format.json { render :show, status: :ok, location: @dataprotection }
      else
        format.html { render :edit }
        format.json { render json: @dataprotection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dataprotections/1
  # DELETE /dataprotections/1.json
  def destroy
    @dataprotection.destroy
    respond_to do |format|
      format.html { redirect_to dataprotections_url, notice: 'Dataprotection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataprotection
      @dataprotection = Dataprotection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataprotection_params
      params.require(:dataprotection).permit(:content)
    end
end
