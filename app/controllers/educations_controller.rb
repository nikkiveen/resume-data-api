class EducationsController < ApplicationController
  def create
    @education = Education.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
    )
    redirect_to "/students/#{params[:id]}"
  end

def update
    @education = Education.find_by(id: params[:id])

    @education.update(
      start_date: params[:start_date] || @education.start_date,
      end_date: params[:end_date] || @education.end_date,
      degree: params[:degree] || @education.degree,
      university_name: params[:university_name] || @education.university_name,
      details: params[:details] || @education.details
    )
    redirect_to "/students/#{params[:id]}"
end

def destroy
    @education = Education.find_by(id: params[:id])
    @education.destroy
    render json: {message: "Education successfully deleted."}
    redirect_to "/students"
  end
end
