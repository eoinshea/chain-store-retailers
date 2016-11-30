# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  full_name              :string(255)
#  location               :string(255)
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  agent_id               :string(255)
#  approved               :boolean          default(FALSE)
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 # has_many :sales
   has_many :sales   # class_name: 'Sale', foreign_key: 'agent_id'
  #set_primary_key :agent_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  # def active_for_authentication? 
  #   super && approved? 
  # end 

  # def inactive_message 
  #   if !approved? 
  #     :not_approved 
  #   else 
  #     super # Use whatever other message 
  #   end 
  #end
end
