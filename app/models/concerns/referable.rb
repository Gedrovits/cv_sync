require 'active_support/concern'

module Referable
  extend ActiveSupport::Concern

  included do
    has_many :references_a, as: :reference_a, class_name: 'Reference'
    has_many :references_b, as: :reference_b, class_name: 'Reference'
  end

  class_methods do
    # TODO: Implement
  end
end
