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

end
