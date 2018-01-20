class ResourcesController < ApplicationController
  def index
    byebug
  	@lead_sources = current_user.lead_sources
  	@lead_groups = current_user.lead_groups
  	@pipeline_stages = current_user.stage_of_pipelines
    @batches = current_user.batches
  	active_pane
  	session[:resource_active_pane] = nil
  end

  def create
  end

  private 
  	def active_pane
  		value = session[:resource_active_pane].to_i
  		if value == 1
  			@first = "active"
  		elsif value ==2
  			@second = "active"
  		elsif value==3
  			@third = "active"
      elsif value==4
        @fourth = "active"
  		else
  			@first = "active"
  		end
  	end
end
