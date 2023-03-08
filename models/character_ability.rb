class CharacterAbility < ApplicationRecord
    belongs_to :ability
    belongs_to :character
end
