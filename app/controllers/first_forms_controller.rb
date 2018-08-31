class FirstFormsController < ApplicationController
  before_action :set_first_form, only: [:show, :edit, :update, :destroy]

  # GET /first_forms
  # GET /first_forms.json
  def index
    @first_forms = FirstForm.all
  end

  # GET /first_forms/1
  # GET /first_forms/1.json
  def show
  end

  # GET /first_forms/new
  def new
    @first_form = FirstForm.new
  end

  # GET /first_forms/1/edit
  def edit
  end

  # POST /first_forms
  # POST /first_forms.json
  def create
    @first_form = FirstForm.new(first_form_params)

    respond_to do |format|
      if @first_form.save
        format.html { redirect_to @first_form, notice: 'First form was successfully created.' }
        format.json { render :show, status: :created, location: @first_form }
      else
        format.html { render :new }
        format.json { render json: @first_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_forms/1
  # PATCH/PUT /first_forms/1.json
  def update
    respond_to do |format|
      if @first_form.update(first_form_params)
        format.html { redirect_to @first_form, notice: 'First form was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_form }
      else
        format.html { render :edit }
        format.json { render json: @first_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_forms/1
  # DELETE /first_forms/1.json
  def destroy
    @first_form.destroy
    respond_to do |format|
      format.html { redirect_to first_forms_url, notice: 'First form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_form
      @first_form = FirstForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_form_params
      params.require(:first_form).permit(:feld1, :feld2)
    end
end
