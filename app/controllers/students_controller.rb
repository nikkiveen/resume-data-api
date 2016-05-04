class StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def create
    @student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      blog: params[:blog],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo]
    )

    redirect_to "/students/#{params[:id]}"
  end

  def show
    @student = Student.find_by(id: params[:id])

    render 'show.json.jbuilder'
  end

  def update
    @student = Student.update(
      first_name: params[:first_name] || @student.first_name,
      last_name: params[:last_name] || @student.last_name,
      email: params[:email] || @student.email,
      phone_number: params[:phone_number] || @student.phone_number,
      short_bio: params[:short_bio] || @student.short_bio,
      linkedin_url: params[:linkedin_url] || @student.linkedin_url,
      twitter_handle: params[:twitter_handle] || @student.twitter_handle,
      blog: params[:blog] || @student.blog,
      resume_url: params[:resume_url] || @student.resume_url,
      github_url: params[:github_url] || @student.github_url,
      photo: params[:photo] || @student.photo
    )
    render json: {message: "Student Successfully Updated."}
    redirect_to "/students/#{params[:id]}"
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: {message: "Student Successfully Deleted."}
    redirect_to "/students"
  end
end
