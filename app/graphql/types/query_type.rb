module Types
  class QueryType < Types::BaseObject
    field :default_robots, Types::DefaultRobotType.connection_type, null: false do
      argument :user_id, ID, required: true
    end

    def default_robots(arguments = {})
      user_id = arguments[:user_id]
      user = User.find(user_id)
      user.robots.all
    end
  end
end
