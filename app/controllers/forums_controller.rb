class ForumsController < ApplicationController
  before_action :set_forum, only: %i[ show edit update destroy ]
  before_action :recommended_topics
  
  def index
    @forums = Forum.all
    recommended_topics
    @tags = Forum.tags.keys
    @tags = @tags.map { |str| str.gsub('_', ' ') }
    @tags = @tags.map(&:camelize)
  end

  def show
    recommended_topics
    @comment = @forum.comments.build
    @current_id = current_user.id.to_s
    @forum_user_id = @forum["user_id"].to_s
  end

  def recommended_topics
    @recommended_topics = Forum.tags.keys.to_a.take(5)
    @recommended_topics = @recommended_topics.map { |str| str.gsub('_', ' ') }
    @recommended_topics = @recommended_topics.map(&:camelize)
  end

  def new
    @forum = Forum.new
  end

  def edit
  end

  def create
    @forum = Forum.new(forum_params)
    if current_user
      @id = current_user.id

      @username = current_user.username
      username_string = @username.to_s

      @course = current_user.course
      course_string = @course.to_s

      @user_id = current_user.id
      user_id = @user_id.to_s

      @bio = current_user.bio
      bio = @bio.to_s

      @user_image = current_user.image
    else
      # redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
    @forum.username = params[:username] || username_string
    @forum.course = params[:course] || course_string
    @forum.user_id = params[:user_id] || user_id
    @forum.bio = params[:bio] || bio

    respond_to do |format|
      if @forum.save
        format.html { redirect_to forum_url(@forum), notice: "Forum was successfully created." }
        format.json { render :show, status: :created, location: @forum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @forum.update(forum_params)
        format.html { redirect_to forum_url(@forum), notice: "Forum was successfully updated." }
        format.json { render :show, status: :ok, location: @forum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @forum.destroy

    respond_to do |format|
      format.html { redirect_to forums_url, notice: "Forum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_forum
      @forum = Forum.find(params[:id])
    end

    def forum_params
      params.require(:forum).permit(:title, :description, :tags, :username, :course, :user_image, :bio, :user_id)
    end
end
