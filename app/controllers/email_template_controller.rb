class EmailTemplateController < ApplicationController
  def index
    @email_templates = current_user.email_templates
  end

  def show
  end

  def edit
  end

  def delete
    if user_can_delete?
      email_template = EmailTemplate.where(id: params[:id]).first
      email_template.delete
    else
      flash.now[:notice] = 'You are not authorized to delete this Pipeline Stage'
    end
    redirect_to '/email_templates'
  end

  def create
    email_template = EmailTemplate.create(permit_params)
    email_template.user_id = current_user.id
    email_template.save!
    redirect_to "/email_templates"
  end

  private

  def permit_params
    params.require(:editor).permit(:name, :content)
  end

  def user_can_delete?
    email_template = EmailTemplate.where(id: params[:id]).first
    if email_template.user = current_user
      return true
    else
      return false
    end
  end

end
