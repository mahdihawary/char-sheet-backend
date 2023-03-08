class RaceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :desc, :name, :image, :ability, :ability_score, :speed, :darkvision
end
