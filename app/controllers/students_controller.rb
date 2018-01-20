class StudentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @students = current_user.students
  end

  def create
    # student = current_user.student.create(student_permit_params);
    student  = Student.create(student_permit_params)
    student.user_id = current_user.id
    student.save!
    redirect_to '/students'
  end

  def edit
  end

  def delete
    if user_can_delete?
      student = Student.where(id: params[:id]).first
      student.delete
    else
      flash.now[:notice] = 'You are not authorized to delete this Pipeline Stage'
    end
    redirect_to '/students'
  end

  def show
  end


  private 
  def student_permit_params
    params.require(:student).permit(:first_name, :last_name, :batch_id, :lead_source_id, :lead_group_id, :address, :query, :phone_number, :email, :date, :stage_of_pipeline_id)
  end

  def user_can_delete?
    student = Student.where(id: params[:id]).first
    if student.user = current_user
      return true
    else
      return false
    end
  end

end
