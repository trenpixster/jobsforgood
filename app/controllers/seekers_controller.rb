class SeekersController < ApplicationController
  def index
    @seekers = Seeker.where(institution_id: params[:institution_id]).all
  end

  def new
    @seeker = current_institution.seekers.build
  end

  def create
    @seeker = current_institution.seekers.build(seekers_params)
    if @seeker.save
      redirect_to institution_seeker_path(@seeker)
    else
      render :new
    end
  end

  def show
    @seeker = current_institution.seekers.find(params[:id])
  end

  def edit
    @seeker = current_institution.seekers.find(params[:id])
  end

  def update
    @seeker = current_institution.seekers.find(params[:id])
    @seeker.update!(seekers_params)
    redirect_to institution_seeker_path(@seeker)
  end

  private

  def seekers_params
    params.require(:seeker).permit(:name, :country, :city)
  end
end
