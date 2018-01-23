class DripController < ApplicationController
  def index
  end

  def create
  	if params_belongs_to_user?
	  	campaign = Campaign.create(	name: params[:create_campaign][:name], 
	  								type_id: params[:create_campaign][:type].to_i, 
	  								no_of_drips: params[:create_campaign][:no_of_drips].to_i, 
	  								lead_group_id: params[:create_campaign][:lead_group].to_i,
	  								stage_of_pipeline_id: params[:create_campaign][:stage_of_pipeline].to_i,
	  								user_id: current_user.id)
	  	campaign.save
	  	if valid_templates.nil?
	  		campaign.destroy!
	  		redirect_to '/campaigns'
	  	else
	  		i = 1
	  		no_of_drips = params[:create_campaign][:no_of_drips].to_i
	  		while i <= no_of_drips
	  			drip_name = params[:create_campaign]["drip_#{i}_name"]
	  			drip_template = params[:create_campaign]["drip_#{i}_template"].to_i
	  			drip_date = DateTime.strptime(params[:create_campaign]["datetimepicker_#{i}"], '%m/%d/%Y %H:%M %p')
	  			if valid_templates.include? drip_template
		  			drip = Drip.create(	name: drip_name, 
		  								type_id: params[:create_campaign][:type], 
		  								drip_number: params[:create_campaign][:no_of_drips],
		  								template_id: drip_template,
		  								campaign_id: campaign.id,
		  								date_time: drip_date)
		  			drip.save
	  			else
	  				campaign.destroy!
	  				return redirect_to '/campaigns'
	  			end
	  			i = i + 1
	  		end
	  		if i <= params[:create_campaign][:no_of_drips].to_i
	  			campaign.destroy!
	  			redirect_to '/campaigns'
	  		end
  		end
  	else
  		campaign.destroy!
  		redirect_to '/campaigns'
  	end
  end

  def delete
  end

  def show
  end

  private

  	def params_belongs_to_user?
  		if current_user.lead_groups.pluck(:id).include? params[:create_campaign][:lead_group].to_i
  			if current_user.stage_of_pipelines.pluck(:id).include? params[:create_campaign][:stage_of_pipeline].to_i
  				type = params[:create_campaign][:type].to_i
  				if  type == 1 || type == 2
  					return true
  				end
  			end
  		end
  			false
  	end

  	def valid_templates
  		if params[:create_campaign][:type].to_i == 1
  			current_user.email_templates.pluck(:id)
  		elsif 
  			current_user.sms_templates.pluck(:id)
  		else
  			nil
  		end
  	end
end
