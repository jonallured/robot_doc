# frozen_string_literal: true

module Types
  class ArtsyRobotEdgeType < GraphQL::Types::Relay::BaseEdge
    node_type(Types::DefaultRobotType)
  end

  class ArtsyRobotConnectionType < Types::Pagination::PageableConnection
    edge_type(Types::ArtsyRobotEdgeType)
  end
end
