class ClassTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :desc, :name, :image
end
