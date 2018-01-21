class SmsTemplateController < ApplicationController
  def index
    @sms_templates = current_user.sms_templates

  end

  def create
    sms_template = SmsTemplate.create(permit_params)
    sms_template.user_id = current_user.id
    sms_template.save!
    redirect_to "/sms_templates"
  end

  def edit
  end

  def show
  end

  def delete
    if user_can_delete?
      sms_template = SmsTemplate.where(id: params[:id]).first
      sms_template.delete
    else
      flash.now[:notice] = 'You are not authorized to delete this Pipeline Stage'
    end
    redirect_to '/sms_templates'
  end

  private

  def permit_params
    params.require("sms-template").permit(:name, :content)
  end

  def user_can_delete?
    sms_template = SmsTemplate.where(id: params[:id]).first
    if sms_template.user = current_user
      return true
    else
      return false
    end
  end
end
