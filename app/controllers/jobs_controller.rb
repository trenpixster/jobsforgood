class JobsController < ApplicationController
  def index
    if params[:company_id]
      @jobs = Job.where(company_id: params[:company_id]).all
    else
      @jobs = Job.all
    end
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
    @job = current_company.jobs.find(params[:id])
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
