class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  include Neoid::Relationship

  neoidable do |c|
    c.relationship start_node: :user, end_node: :movie, type: :likes
  end
end
