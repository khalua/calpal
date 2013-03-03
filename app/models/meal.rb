# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  eat_date    :date
#  eat_time    :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Meal < ActiveRecord::Base
  attr_accessible :name, :description, :eat_date, :eat_time
  has_and_belongs_to_many :foods
  belongs_to :user, :inverse_of => :meals
end
