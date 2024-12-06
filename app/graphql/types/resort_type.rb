# frozen_string_literal: true

module Types
  class ResortType < Types::BaseObject
    description 'A Resort Type'
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :description, String
    field :apartments, [Types::ApartmentType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
