class ExperiencesController < ApplicationController
  def create
    @experience = Experience.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details]
    )
  end
end
