class ResponsibilitiesController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @responsibility = @job.responsibilities.create(responsibility_params)
    redirect_to job_path(@job)
  end

  def destroy
    @job = Job.find(params[:job_id])
    @responsibility = @job.responsibilities.find(params[:id])
    @responsibility.destroy
    redirect_to job_path(@job)
  end

  private

  def responsibility_params
    params.require(:responsibility).permit(:content)
  end
end
