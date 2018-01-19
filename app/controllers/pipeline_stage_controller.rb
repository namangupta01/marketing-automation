class PipelineStageController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    pipeline_stage = StageOfPipeline.create(name: params[:pipeline][:name], user_id: current_user.id)
    pipeline_stage.save!
    session[:resource_active_pane] = 3
    redirect_to '/resources'
  end

  def delete
    if user_can_delete?
      pipeline_stage = StageOfPipeline.where(id: params[:id]).first
      pipeline_stage.delete
      session[:resource_active_pane] = 3
    else
      flash.now[:notice] = 'You are not authorized to delete this Pipeline Stage'
    end
    redirect_to '/resources'
  end

  def edit
  end

  private

  def user_can_delete?
    pipeline_stage = StageOfPipeline.where(id: params[:id]).first
    if pipeline_stage.user = current_user
      return true
    else
      return false
    end
  end

end
