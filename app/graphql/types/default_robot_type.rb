# frozen_string_literal: true

module Types
  class DefaultRobotType < Types::BaseObject
    description 'A robot'

    field :id, ID, 'Uniq ID for this robot', null: false

    field :name, String, null: false
    field :type, String, null: false
  end
end
