class ResourcesController < ApplicationController
  before_action :authenticate_user!
  def index
  	@lead_sources = LeadSource.all
  	@lead_groups = LeadGroup.all
  	@pipeline_stages = StageOfPipeline.all
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
  		else
  			@first = "active"
  		end
  	end
end
