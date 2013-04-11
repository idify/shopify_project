class Admin::Filter < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :action_type, :condition, :name, :slug, :value,:operator
  extend FriendlyId
  friendly_id :name, use: :slugged
end
