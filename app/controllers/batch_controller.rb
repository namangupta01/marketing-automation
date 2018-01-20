class BatchController < ApplicationController
  def index
  end

  def edit
  end

  def delete
  	if user_can_delete?
      batch = Batch.where(id: params[:id]).first
      batch.delete
      session[:resource_active_pane] = 4
    else
      flash.now[:notice] = 'You are not authorized to delete this Pipeline Stage'
    end
    redirect_to '/resources'
  end

  def show
  end

  def create
  	batch = Batch.create(name: params[:batch][:name], user_id: current_user.id)
  	batch.save!
  	session[:resource_active_pane] = 4
  	redirect_to '/resources'
  end

  private
  def user_can_delete?
    batch = Batch.where(id: params[:id]).first
    if batch.user = current_user
      return true
    else
      return false
    end
  end
end
