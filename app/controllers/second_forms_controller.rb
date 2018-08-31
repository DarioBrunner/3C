class SecondFormsController < ApplicationController
  before_action :set_second_form, only: [:show, :edit, :update, :destroy]

  # GET /second_forms
  # GET /second_forms.json
  def index
    @second_forms = SecondForm.all
  end

  # GET /second_forms/1
  # GET /second_forms/1.json
  def show
  end

  # GET /second_forms/new
  def new
    @second_form = SecondForm.new
  end

  # GET /second_forms/1/edit
  def edit
  end

  # POST /second_forms
  # POST /second_forms.json
  def create
    @second_form = SecondForm.new(second_form_params)

    respond_to do |format|
      if @second_form.save
        format.html { redirect_to @second_form, notice: 'Second form was successfully created.' }
        format.json { render :show, status: :created, location: @second_form }
      else
        format.html { render :new }
        format.json { render json: @second_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /second_forms/1
  # PATCH/PUT /second_forms/1.json
  def update
    respond_to do |format|
      if @second_form.update(second_form_params)
        format.html { redirect_to @second_form, notice: 'Second form was successfully updated.' }
        format.json { render :show, status: :ok, location: @second_form }
      else
        format.html { render :edit }
        format.json { render json: @second_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_forms/1
  # DELETE /second_forms/1.json
  def destroy
    @second_form.destroy
    respond_to do |format|
      format.html { redirect_to second_forms_url, notice: 'Second form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_form
      @second_form = SecondForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_form_params
      params.require(:second_form).permit(:feld1, :feld2)
    end
end
