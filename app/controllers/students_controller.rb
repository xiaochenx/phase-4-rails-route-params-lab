class StudentsController < ApplicationController

  def index
    students = if params[:name]
                 Student.by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    #always remember if use "find_by", don't forget to add id: "then params"
    render json: student
    # byebug
  end
end
