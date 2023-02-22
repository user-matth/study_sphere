class SupportsController < ApplicationController
  before_action :set_support, only: %i[ show edit update destroy ]

  # GET /supports or /supports.json
  def index
    @supports = Support.all
  end

  # GET /supports/1 or /supports/1.json
  def show
  end

  # GET /supports/new
  def new
    @support = Support.new
  end

  # GET /supports/1/edit
  def edit
  end

  # POST /supports or /supports.json
  def create
    @support = Support.new(support_params)

    respond_to do |format|
      if @support.save
        format.html { redirect_to support_url(@support), notice: "Support was successfully created." }
        format.json { render :show, status: :created, location: @support }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supports/1 or /supports/1.json
  def update
    respond_to do |format|
      if @support.update(support_params)
        format.html { redirect_to support_url(@support), notice: "Support was successfully updated." }
        format.json { render :show, status: :ok, location: @support }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supports/1 or /supports/1.json
  def destroy
    @support.destroy

    respond_to do |format|
      format.html { redirect_to supports_url, notice: "Support was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support
      @support = Support.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def support_params
      params.fetch(:support, {})
    end
end
