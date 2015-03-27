class Bill < ActiveRecord::Base
  belongs_to :payment_group
  belongs_to :user
  belongs_to :group
end
