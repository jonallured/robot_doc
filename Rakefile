# frozen_string_literal: true

require_relative 'config/application'
require 'graphql/rake_task'

Rails.application.load_tasks

GraphQL::RakeTask.new(schema_name: 'RobotDocSchema', idl_outfile: '_schema.graphql')

if Rails.env.development? || Rails.env.test?
  require 'rubocop/rake_task'
  desc 'Run RuboCop'
  RuboCop::RakeTask.new(:rubocop)

  desc 'prints out the schema file'
  task print_schema: :environment do
    require 'graphql/schema/printer'
    puts GraphQL::Schema::Printer.new(ConvectionSchema).print_schema
  end

  Rake::Task[:default].clear
  task default: %i[rubocop spec]
end
