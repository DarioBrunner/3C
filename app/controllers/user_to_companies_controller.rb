class UserToCompaniesController < ApplicationController
  before_action :set_user_to_company, only: [:show, :edit, :update, :destroy]

  # GET /user_to_companies
  # GET /user_to_companies.json
  def index
    @user_to_companies = UserToCompanie.all
  end

  # GET /user_to_companies/1
  # GET /user_to_companies/1.json
  def show
  end

  # GET /user_to_companies/new
  def new
    @user_to_company = UserToCompanie.new
  end

  # GET /user_to_companies/1/edit
  def edit
  end

  # POST /user_to_companies
  # POST /user_to_companies.json
  def create
    @user_to_company = UserToCompanie.new(user_to_company_params)

    respond_to do |format|
      if @user_to_company.save
        format.html { redirect_to @user_to_company, notice: 'User to companie was successfully created.' }
        format.json { render :show, status: :created, location: @user_to_company }
      else
        format.html { render :new }
        format.json { render json: @user_to_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_to_companies/1
  # PATCH/PUT /user_to_companies/1.json
  def update
    respond_to do |format|
      if @user_to_company.update(user_to_company_params)
        format.html { redirect_to @user_to_company, notice: 'User to companie was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_to_company }
      else
        format.html { render :edit }
        format.json { render json: @user_to_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_to_companies/1
  # DELETE /user_to_companies/1.json
  def destroy
    @user_to_company.destroy
    respond_to do |format|
      format.html { redirect_to user_to_companies_url, notice: 'User to companie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_to_company
      @user_to_company = UserToCompanie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_to_company_params
      params.require(:user_to_company).permit(:admin, :user_id_id, :company_id_id)
    end
end
