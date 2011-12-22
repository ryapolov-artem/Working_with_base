class Item < ActiveRecord::Base
	validates :name, :presence =>true
	validates :description, :presence =>true
	validates :owner, :presence =>true
	validates :holder, :presence =>true
end
