# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  meal_date   :date
#  meal_time   :time
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Meal < ActiveRecord::Base
  attr_accessible :name, :description, :meal_date, :meal_time
  has_and_belongs_to_many :foods
  belongs_to :user, :inverse_of => :meals
end
