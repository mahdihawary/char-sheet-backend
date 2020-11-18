class CharacterSpell < ApplicationRecord
    belongs_to :character
    belogs_to :spell
end
