# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_apartment, mutation: Mutations::CreateApartment
    field :create_resort, mutation: Mutations::CreateResort
  end
end
