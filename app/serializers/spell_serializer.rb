class SpellSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :level, :description, :class_list
end
