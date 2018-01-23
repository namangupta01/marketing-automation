class CampaignController < ApplicationController
  def index
    campaigns = current_user.campaigns
    @live_campaigns = campaigns.where("end_at > ?", DateTime.current).sort_by{ |t| t.end_at }
    @archived_campaigns = campaigns.where("end_at < ?", DateTime.current).sort_by{ |t| t.end_at }
    @all_campaigns = campaigns.sort_by{ |t| t.end_at }
    active_pane
    session[:campaign_active_pane] = nil
  end

  def create
    campaigns = current_user.campaigns
    @live_campaigns = campaigns.where("end_at > ?", DateTime.current).sort_by{ |t| t.end_at }
    @archived_campaigns = campaigns.where("end_at < ?", DateTime.current).sort_by{ |t| t.end_at }
    @all_campaigns = campaigns.sort_by{ |t| t.end_at }
    if params[:create_campaign][:type].to_i == 1
      @templates = current_user.email_templates
    else
      @templates = current_user.sms_templates
    end
    @fourth = "active"
  end

  def delete
  end

  def edit
  end

  def show
  end

  private 
    def active_pane
      value = session[:campaign_active_pane].to_i
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
