class SkillsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @skill = @job.skills.create(skill_params)
    redirect_to job_path(@job)
  end

  def destroy
    @job = Job.find(params[:job_id])
    @skill = @job.skills.find(params[:id])
    @skill.destroy
    redirect_to job_path(@job)
  end

  private

  def skill_params
    params.require(:skill).permit(:content)
  end
end
