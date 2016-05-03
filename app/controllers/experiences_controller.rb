class ExperiencesController < ApplicationController
  def create
    @experience = Experience.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details]
    )
    redirect_to "/students/#{params[:id]}"
  end

  def update
    @experience = Experience.find_by(id: params[:id])

    @experience.update(
      start_date: params[:start_date] || @experience.start_date,
      end_date: params[:end_date] || @experience.end_date,
      job_title: params[:job_title] || @experience.job_title,
      company_name: params[:company_name] || @experience.company_name,
      details: params[:details] || @experience.details
    )
    redirect_to "/students/#{params[:id]}"
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    @experience.destroy
    render json: {message: "Shipper successfully deleted."}
    redirect_to "/students"
  end
end
