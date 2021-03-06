class JobsController < ApplicationController
  before_action :set_job, only: %i[show edit update destroy jdp]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/jrp
  def jrp
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show; end

  # GET /jobs/jdp/1
  def jdp; end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit; end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html do
          redirect_to @job, notice: 'Job was successfully created.'
        end
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html do
          redirect_to @job, notice: 'Job was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html do
        redirect_to jobs_url, notice: 'Job was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = Job.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def job_params
    params.require(:job).permit(
      :title,
      :company,
      :city,
      :state,
      :position,
      :rate,
      :favorite,
      :expired,
      :score,
      :description
    )
  end
end
