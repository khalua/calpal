# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  target          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation, :target
  has_many  :meals#, :inverse_of => :users
  has_many  :foods, :through => :meals
  validates :name, :email, :uniqueness => true, :presence => true
  validates :target, :presence => true
end
