class StudentsController < ApplicationController
  def index
    render 'index.json.jbuilder'
  end

  def new
    render 'new.json.jbuilder'
  end

  def create
    
  end

  def show
    @student = Student.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def edit
    render 'edit.json.jbuilder'
  end

  def update
    
  end

  def destroy
    
  end
end
