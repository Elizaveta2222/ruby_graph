module Mutations
    class CreateResort < BaseMutation
      description 'Creates new Resort'
  
      field :resort, Types::ResortType, null: false
  
      argument :name, String, required: true
      argument :email, String, required: true
      argument :description, String, required: true
  
      def resolve(name:, email:, description:)
        new_resort = Resort.new(
          name: name,
          email: email,
          description: description
        )
  
        if new_resort.save
          { resort: new_resort, errors: [] }
        else
          { resort: nil, errors: resort.errors.full_messages }
        end
      end
    end
  end
  