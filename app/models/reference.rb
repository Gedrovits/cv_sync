class Reference < ActiveRecord::Base
  belongs_to :user
  belongs_to :reference_a, polymorphic: true
  belongs_to :reference_b, polymorphic: true
end
