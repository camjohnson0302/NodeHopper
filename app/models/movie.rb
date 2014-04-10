class Movie < ActiveRecord::Base
  include Neoid::Node

  has_many :likes
  has_many :users, through: :likes

  neoidable do |c|
    c.field :name
  end
end
