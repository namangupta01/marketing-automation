class LeadSourceController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def create
  	lead_source = LeadSource.create(name: params[:lead_source][:name], user_id: current_user.id)
  	lead_source.save!
  	session[:resource_active_pane] = 1
  	redirect_to '/resources'
  end

  def edit
  end

  def delete
    if user_can_delete?
      lead_source = LeadSource.where(id: params[:id]).first
      lead_source.delete
      session[:resource_active_pane] = 1
    else
      flash.now[:notice] = 'You are not authorized to delete this Pipeline Stage'
    end
    redirect_to '/resources'
  end

  private
  def user_can_delete?
    lead_source = LeadSource.where(id: params[:id]).first
    if lead_source.user = current_user
      return true
    else
      return false
    end
  end
end
