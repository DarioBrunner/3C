class GroupCommentsController < ApplicationController
  before_action :set_group_comment, only: [:show, :edit, :update, :destroy]

  # GET /group_comments
  # GET /group_comments.json
  def index
    @group_comments = GroupComment.all
  end

  # GET /group_comments/1
  # GET /group_comments/1.json
  def show
    @group_message = GroupMessage.find(params[:group_message_id])
  end

  # GET /group_comments/new
  def new
    @group_comment = GroupComment.new
    @group_message = GroupMessage.find(params[:group_message_id])
  end

  # GET /group_comments/1/edit
  def edit

    @group_message = GroupMessage.find(params[:group_message_id])
    @group_comment = GroupComment.find(params[:id])


  end

  # POST /group_comments
  # POST /group_comments.json
  def create
    @group_message = GroupMessage.find(params[:group_message_id])
    @group_comment = @group_message.group_comments.new(group_comment_params)
    @group_comment.user_id = current_user.id


    respond_to do |format|
      if @group_comment.save
        format.html { redirect_to [@group_message, @group_comment], notice: 'Group comment was successfully created.' }
        format.json { render :show, status: :created, location: @group_comment }
      else
        format.html { render :new }
        format.json { render json: @group_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_comments/1
  # PATCH/PUT /group_comments/1.json
  def update
    @group_message = GroupMessage.find(params[:group_message_id])
    @group_comment = @group_message.group_comments.find(params[:id])
    respond_to do |format|
      if @group_comment.update(group_comment_params)
        format.html { redirect_to [@group_message, @group_comment], notice: 'Group comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_comment }
      else
        format.html { render :edit }
        format.json { render json: @group_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_comments/1
  # DELETE /group_comments/1.json
  def destroy
    @group_comment.destroy
    respond_to do |format|
      format.html { redirect_to group_messages_path, notice: 'Group comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_comment
      @group_comment = GroupComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_comment_params
      params.require(:group_comment).permit(:group_message_id, :user_id, :comment)
    end
end
