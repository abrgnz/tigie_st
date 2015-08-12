class SubChaptersController < ApplicationController
  before_action :set_sub_chapter, only: [:show, :edit, :update, :destroy]

  # GET /sub_chapters
  # GET /sub_chapters.json
  def index
    @sub_chapters = SubChapter.all
  end

  # GET /sub_chapters/1
  # GET /sub_chapters/1.json
  def show
  end

  # GET /sub_chapters/new
  def new
    @sub_chapter = SubChapter.new
  end

  # GET /sub_chapters/1/edit
  def edit
  end

  # POST /sub_chapters
  # POST /sub_chapters.json
  def create
    @sub_chapter = SubChapter.new(sub_chapter_params)

    respond_to do |format|
      if @sub_chapter.save
        format.html { redirect_to @sub_chapter, notice: 'Sub chapter was successfully created.' }
        format.json { render :show, status: :created, location: @sub_chapter }
      else
        format.html { render :new }
        format.json { render json: @sub_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_chapters/1
  # PATCH/PUT /sub_chapters/1.json
  def update
    respond_to do |format|
      if @sub_chapter.update(sub_chapter_params)
        format.html { redirect_to @sub_chapter, notice: 'Sub chapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_chapter }
      else
        format.html { render :edit }
        format.json { render json: @sub_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_chapters/1
  # DELETE /sub_chapters/1.json
  def destroy
    @sub_chapter.destroy
    respond_to do |format|
      format.html { redirect_to sub_chapters_url, notice: 'Sub chapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_chapter
      @sub_chapter = SubChapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_chapter_params
      params.require(:sub_chapter).permit(:identifier, :content, :position, :parent)
    end
end
