# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  calories   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Food < ActiveRecord::Base
  attr_accessible :name, :image, :calories
  has_and_belongs_to_many :meals
end
