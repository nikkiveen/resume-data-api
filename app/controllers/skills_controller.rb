class SkillsController < ApplicationController
  def create
    @skill = Skill.create(
      name: params[:name]
    )
    redirect_to "/students/#{params[:id]}"
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.update(
      name: params[:name] || @skill.name
    )
    render json: {message: "Skill successfully updated."}
    redirect_to "/students/#{params[:id]}"
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render json: {message: "Skill successfully deleted."}
    redirect_to "/students"
  end
end
