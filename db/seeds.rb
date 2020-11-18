# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skill.destroy_all
Spell.destroy_all

def spells 
    response = RestClient.get 'https://api.open5e.com/spells/'
    json =JSON.parse response
   

    if !json.nil?
        json["results"].map do |spell|
            Spell.create(name:spell["name"], level:spell["level_int"], description:spell["desc"], class_list:spell["dnd_class"])
        end
    else puts "error seeding spells"
    end
end

def skills 
    response =RestClient.get "https://www.dnd5eapi.co/api/skills/"
    json = JSON.parse response
    json["results"].each do |skill|
        index=skill["index"]
        response2 =RestClient.get "https://www.dnd5eapi.co/api/skills/#{index}"
        json2 =JSON.parse response2
        Skill.create(name:json2["name"], desc:json2["desc"][0], ability:json2["ability_score"]["name"])
    end
end
spells

