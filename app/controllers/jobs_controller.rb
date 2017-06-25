class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @jobs = @jobs.tagged_with(params[:language]) if params[:language]
    @jobs = @jobs.tagged_with(params[:skill]) if params[:skill]
    @jobs = @jobs.where(company_id: params[:company_id]) if params[:company_id]
  end

  def new
    @job = current_company.jobs.build
  end

  def create
    @job = current_company.jobs.build(jobs_params)
    if @job.save
      redirect_to @job
    else
      render :new
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = current_company.jobs.find(params[:id])
  end

  def update
    @job = current_company.jobs.find(params[:id])
    @job.update!(jobs_params)
    redirect_to @job
  end

  private

  def jobs_params
    params.require(:job).permit(:title, :description, :country, :city,
      :language_list, :skill_list)
  end
end
