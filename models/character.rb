class Character < ApplicationRecord
    belongs_to :user
    has_many :character_spells
    has_many :spells, through: :character_spells
    has_many :character_skills
    has_many :skills, through: :character_skills
    has_many :character_abilities
    has_many :abilities, through: :character_abilities
end
