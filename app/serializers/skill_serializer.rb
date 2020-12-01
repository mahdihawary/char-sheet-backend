class SkillSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :ability, :desc
end
