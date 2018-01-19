class LeadGroupController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def create
  	lead_group = LeadGroup.create(name: params[:lead_group][:name], user_id: current_user.id)
  	lead_group.save!
  	session[:resource_active_pane] = 2
  	redirect_to '/resources'
  end

  def edit
  end

  def delete
    if user_can_delete?
      lead_group = LeadGroup.where(id: params[:id]).first
      lead_group.delete
      session[:resource_active_pane] = 2
    else
      flash.now[:notice] = 'You are not authorized to delete this Pipeline Stage'
    end
    redirect_to '/resources'
  end

  private
  def user_can_delete?
    lead_group = LeadGroup.where(id: params[:id]).first
    if lead_group.user = current_user
      return true
    else
      return false
    end
  end
end
