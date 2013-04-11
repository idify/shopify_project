class Sale < ActiveRecord::Base
  # attr_accessible :title, :body
	attr_accessible :address,:city,:state,:country,:email,:gateway,:name,:order_date,:total_amount,:transaction_id,:product_id,:order_status
	before_create :orderdate
	validates_presence_of :name,:email,:address,:state,:city,:country,:gateway,:total_amount,:transaction_id
	validates :total_amount,:numericality => true
	validates :email,:format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
	
	def orderdate
		self.order_date = Time.now
	end
end
