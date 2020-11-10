# frozen_string_literal: true

require 'rails_helper'

describe 'artsy robots query' do
  let(:user) { FactoryBot.create :user }
  let(:query_inputs) { %[(userId: "#{user.id}")] }

  let(:query) do
    <<-GRAPHQL
    query {
      artsyRobots#{query_inputs} {
        edges {
          node {
            color
            id
            name
          }
        }
      }
    }
    GRAPHQL
  end

  context 'with no robots' do
    it 'returns an empty array' do
      post '/graphql', params: { query: query }

      expect(response.status).to eq 200
      body = JSON.parse(response.body)
      edges = body['data']['artsyRobots']['edges']
      expect(edges.count).to eq Robot.count
    end
  end

  context 'with some robots' do
    it 'returns an empty array' do
      FactoryBot.create_list :robot, 3
      post '/graphql', params: { query: query }

      expect(response.status).to eq 200
      body = JSON.parse(response.body)
      edges = body['data']['artsyRobots']['edges']
      expect(edges.count).to eq 0
    end
  end

  context 'with some robots for that user' do
    it 'returns an empty array' do
      FactoryBot.create_list :robot, 3, user: user
      post '/graphql', params: { query: query }

      expect(response.status).to eq 200
      body = JSON.parse(response.body)
      edges = body['data']['artsyRobots']['edges']
      expect(edges.count).to eq 3
    end
  end
end
