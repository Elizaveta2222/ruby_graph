# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    # All resorts
    field :all_resorts, [Types::ResortType], null: false do
      description 'All Resorts everywhere'
      argument :size, Integer, required: false, default_value: 15
    end

    def all_resorts(size:)
      Resort.all.limit(size).order(id: :asc)
    end

    # One resort
    field :resort, Types::ResortType, null: false do
      description 'One Resort by its ID'
      argument :id, ID, required: true
    end

    def resort(id:)
      Resort.find(id)
    end

    # All apartments
    field :all_apartments, [Types::ApartmentType], null: false do
      description 'All Apartments everywhere'
      argument :size, Integer, required: false, default_value: 15
    end

    def all_apartments(size:)
      Apartment.all.limit(size).order(id: :asc)
    end

    # One apartment
    field :apartment, Types::ApartmentType, null: false do
      description 'One Apartment by its ID'
      argument :id, ID, required: true
    end

    def apartment(id:)
      Apartment.find(id)
    end

  end
end
