class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable

  has_many :lead_groups
  has_many :lead_sources
  has_many :stage_of_pipelines
  has_many :students
  has_many :batches
  has_many :email_templates
  has_many :sms_templates
  
end
