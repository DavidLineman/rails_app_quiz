class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.create(job_params)

    if @job.save
      render 'job/create'
    end 
  end

  private

  def job_params
    params.require(:job).permit(:employer_name, :employer_description, :job_title, :job_description
                                :years_of_experience, :education_requirement, :industry
                                :base_salary, :employment_type_id)
  end
end
