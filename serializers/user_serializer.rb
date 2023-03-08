class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id

  attribute :characters do |object|
    object.characters.as_json
  end
end
