# == Schema Information
#
# Table name: sales
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  agent_id           :string(255)
#  year_number        :integer
#  week_number        :integer
#  lotto              :float
#  lotto_plus         :float
#  euro_millions      :float
#  euro_millions_plus :float
#  scratchcard        :float
#

class Sale < ActiveRecord::Base
	#belongs_to :user
	belongs_to :user   #class_name: "User", foreign_key: "agent_id"
end
