class ExpandedsController < ApplicationController
  before_action :set_expanded, only: [:show, :edit, :update, :destroy]

  # GET /expandeds
  # GET /expandeds.json
  def index
    @expandeds = Expanded.all
  end

  # GET /expandeds/1
  # GET /expandeds/1.json
  def show
  end

  # GET /expandeds/new
  def new
    @expanded = Expanded.new
  end

  # GET /expandeds/1/edit
  def edit
  end

  # POST /expandeds
  # POST /expandeds.json
  def create
    @expanded = Expanded.new(expanded_params)

    respond_to do |format|
      if @expanded.save
        format.html { redirect_to @expanded, notice: 'Expanded was successfully created.' }
        format.json { render :show, status: :created, location: @expanded }
      else
        format.html { render :new }
        format.json { render json: @expanded.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expandeds/1
  # PATCH/PUT /expandeds/1.json
  def update
    respond_to do |format|
      if @expanded.update(expanded_params)
        format.html { redirect_to @expanded, notice: 'Expanded was successfully updated.' }
        format.json { render :show, status: :ok, location: @expanded }
      else
        format.html { render :edit }
        format.json { render json: @expanded.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expandeds/1
  # DELETE /expandeds/1.json
  def destroy
    @expanded.destroy
    respond_to do |format|
      format.html { redirect_to expandeds_url, notice: 'Expanded was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expanded
      @expanded = Expanded.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expanded_params
      params.require(:expanded).permit(:identifier, :content, :position, :parent)
    end
end
