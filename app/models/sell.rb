class Sell < ActiveRecord::Base
  attr_accessible :number_of_shares, :user_id, :prediction_id, :price
  belongs_to :prediction
  belongs_to :user
  belongs_to :transaction
  has_many :holds, :dependent => :destroy, :as => :holdable

  scope :incomplete, where(:transaction_id => nil)
end
