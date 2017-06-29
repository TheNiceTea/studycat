class ResumesController < ApplicationController
	before_action :set_upload, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  
   def index
      @resumes = Resume.all
   end
   
   def new
      @resume = Resume.new
   end
   
   def create
   	  @subject = Subject.find(params[:resume][:subject_id])
      @resume = @subject.resumes.new(resume_params)
    
      respond_to do |format|
      if @resume.save
        #http://localhost:3000/unis/4/subject_areas/6/subjects/16

        format.html { redirect_to uni_subject_area_subject_path(params[:resume][:uni_id],params[:resume][:subject_area_id],params[:resume][:subject_id]), notice: 'Upload was successfully created.' }
        format.json { render :show, status: :created, location: @resume }
      else
        format.html { render :new }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end
   
  def destroy
    @resume.destroy
    respond_to do |format|
      format.html { redirect_to uni_subject_area_subject_path(params[:resume][:uni_id],params[:resume][:subject_area_id],params[:resume][:subject_id]), notice: 'Upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def set_resume
      @resume = Resume.find(params[:subject_id])
  end
  
  private
      def resume_params
      params.require(:resume).permit(:name, :attachment)
   end
end
