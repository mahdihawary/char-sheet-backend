class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :health,:strength,:wisdom,:dexterity,:intelligence,:charisma,:constitution,:level,:image,
    :darkvision,:speed,:proficiency,:name,:class_type,:race,:armor,:initiative,:user_id,:id

  attribute :spells do |object| 
    object.spells.as_json
  end
end
