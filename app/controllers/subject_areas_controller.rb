class SubjectAreasController < ApplicationController
  before_action :set_subject_area, only: [:show, :edit, :update, :destroy]

  # GET /subject_areas
  # GET /subject_areas.json
  def index
    @subject_areas = SubjectArea.all
  end

  # GET /subject_areas/1
  # GET /subject_areas/1.json
  def show
  end

  # GET /subject_areas/new
  def new
    @subject_area = SubjectArea.new
  end

  # GET /subject_areas/1/edit
  def edit
  end

  # POST /subject_areas
  # POST /subject_areas.json
  def create
    @uni = Uni.find(params[:subject_area][:uni_id])
    @subject_area = @uni.subject_areas.new(subject_area_params)
    #@subject_area = SubjectArea.new(subject_area_params)

    respond_to do |format|
      if @subject_area.save
        format.html { redirect_to @subject_area, notice: 'Subject area was successfully created.' }
        format.json { render :show, status: :created, location: @subject_area }
      else
        format.html { render :new }
        format.json { render json: @subject_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_areas/1
  # PATCH/PUT /subject_areas/1.json
  def update
    respond_to do |format|
      if @subject_area.update(subject_area_params)
        format.html { redirect_to @subject_area, notice: 'Subject area was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_area }
      else
        format.html { render :edit }
        format.json { render json: @subject_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_areas/1
  # DELETE /subject_areas/1.json
  def destroy
    @subject_area.destroy
    respond_to do |format|
      format.html { redirect_to uni_subject_areas_url, notice: 'Subject area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_area
      @subject_area = SubjectArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_area_params
      params.require(:subject_area).permit(:title)
    end
end
