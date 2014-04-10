class User < ActiveRecord::Base
  include Neoid::Node
  has_many :likes
  has_many :movies, through: :likes

  neoidable do |c|
    c.field :display_name
  end
end
