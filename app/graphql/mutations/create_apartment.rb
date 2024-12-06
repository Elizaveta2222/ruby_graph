module Mutations
    class CreateApartment < BaseMutation
      description 'Creates a new Apartment'
  
      # Define the output field
      field :apartment, Types::ApartmentType, null: false
  
      # Define input arguments
      argument :room_type, String, required: true
      argument :description, String, required: true
      argument :resort_id, ID, required: true
  
      # The resolve method
      def resolve(room_type:, description:, resort_id:)
        new_apartment = Apartment.new(
          room_type: room_type,
          description: description,
          resort_id: resort_id
        )
  
        if new_apartment.save
          { apartment: new_apartment, errors: [] }
        else
          { apartment: nil, errors: resort.errors.full_messages }
        end
      end
    end
  end
  