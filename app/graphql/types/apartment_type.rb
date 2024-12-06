# frozen_string_literal: true

module Types
  class ApartmentType < Types::BaseObject
    description 'An Apartment Type'
    field :id, ID, null: false
    field :room_type, String
    field :description, String
    field :resort_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
