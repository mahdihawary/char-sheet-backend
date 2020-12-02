# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Skill.destroy_all
# Spell.destroy_all
 Race.destroy_all
ClassType.destroy_all
Character.destroy_all

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
# spells
# skills
 Race.create(name:"High Elf", desc:"As a high elf, you have a keen mind and a mastery of at least the basics of magic.", ability:"int", ability_score:2, image:"", darkvision:30, speed:30)
 Race.create(name:"Mountain Dwarf", desc:"As a mountain dwarf, you’re strong and hardy, accustomed to a difficult life in rugged terrain. ", ability:"con", ability_score:2, image:"", darkvision:30, speed:25)
 Race.create(name:"Hobbit", desc:"The diminutive hobbits survive in a world full of larger creatures by avoiding notice or, barring that, avoiding offense. Standing about 3 feet tall, they appear relatively harmless and so have managed to survive for centuries in the shadow of empires and on the edges of wars and political strife.", ability:"dex", ability_score:2, image:"", darkvision:0, speed:25)
 Race.create(name:"Whatever Gollum is", desc:"Gollum is Gollum.", ability:"con", ability_score:3, image:"", darkvision:0, speed:25)
 Race.create(name:"Half-orc", desc:"THalf-orcs’ grayish pigmentation, sloping foreheads, jutting jaws, prominent teeth, and towering builds make their orcish heritage plain for all to see. Half-orcs stand between 5 and 7 feet tall and usually weigh between 180 and 250 pounds. ", ability:"str", ability_score:2, image:"", darkvision:30, speed:30)
 Race.create(name:"Wood Elf", desc:"TAs a wood elf, you have keen senses and intuition, and your fleet feet carry you quickly and stealthily through your native forests. ", ability:"dex", ability_score:3, image:"", darkvision:30, speed:30)
 Race.create(name:"Half-Elf", desc:"TWalking in two worlds but truly belonging to neither, half-elves combine what some say are the best qualities of their elf and human parents: human curiosity, inventiveness, and ambition tempered by the refined senses, love of nature, and artistic tastes of the elves.  ", ability:"cha", ability_score:2, image:"", darkvision:30, speed:30)


 ClassType.create(name: 'Warlock',desc: 'A wielder of magic that is derived from a bargain with an extraplanar entity. You are Proficient in arcana, history, investigation, and deception.', image:'', spellcaster:true)
 ClassType.create(name: 'Bard',desc: 'An inspiring magician whose power echoes the music of creation. You are Proficient in persuasion, deception, and sleight of hand.', image:'', spellcaster:true)
 ClassType.create(name: 'Sorcerer',desc: 'A spellcaster who draws on inherent magic from a gift or bloodline. You are Proficient in arcana, deception, persuasion, and intimidation.', image:'', spellcaster:true)
 ClassType.create(name: 'Druid',desc: 'A priest of the Old Faith, wielding the powers of nature — moonlight and plant growth, fire and lightning — and adopting animal forms. You are Proficient in nature, animal handling, medicine, and arcana.', image:'', spellcaster:true)
 ClassType.create(name: 'Cleric',desc: 'A priestly champion who wields divine magic in service of a higher power. You are Proficient in religion, history, medicine, and insight.', image:'', spellcaster:true)
 ClassType.create(name: 'Paladin',desc: 'A holy warrior bound to a sacred oath. You are Proficient in religion, athletics, persuasion, and insight.', image:'', spellcaster:true)
 ClassType.create(name: 'Wizard',desc: 'A scholarly magic-user capable of manipulating the structures of reality. You are Proficient in arcana, history, investigation, and insight.', image:'', spellcaster:true)
 ClassType.create(name: 'Barbarian',desc: 'A fierce warrior of primitive background who can enter a battle rage. You are Proficient in athletics, intimidation, and survival.', image:'',spellcaster:false)
 ClassType.create(name: 'Monk',desc: 'A master of martial arts, harnessing the power of the body in pursuit of physical and spiritual perfection. You are Proficient in acrobatics, athletics, religion, and stealth.', image:'',spellcaster:false)
 ClassType.create(name: 'Rogue',desc: 'A scoundrel who uses stealth and trickery to overcome obstacles and enemies. You are Proficient in stealth, deception, and sleight of hand.', image:'',spellcaster:false)
 ClassType.create(name: 'Ranger',desc: 'A warrior who uses martial prowess and nature magic to combat threats on the edges of civilization. You are Proficient in animal handling, perception, nature, survival, and stealth.', image:'',spellcaster:false)
 ClassType.create(name: 'Fighter',desc: 'A master of martial combat, skilled with a variety of weapons and armor. You are Proficient in acrobatics, athletics, perception, and intimidation.', image:'',spellcaster:false)

Character.create(health:40,strength:10,wisdom:12,dexterity:18,
    intelligence:11,charisma:16,constitution:15,level:8,image:"https://s.wsj.net/public/resources/images/BN-GA217_legola_G_20141215080444.jpg",
    darkvision:30,speed:30,proficiency:4,name:"Legolas",class_type:"Ranger",race:"High Elf",armor:10,initiative:2,user_id:1)
    Character.create(health:100,strength:18,wisdom:14,dexterity:10,
    intelligence:8,charisma:13,constitution:20,level:7,image:"https://www.aradani.com/wp-content/uploads/2016/04/gimli.jpg",
    darkvision:30,speed:30,proficiency:2,name:"Gimli",class_type:"Fighter",race:"Mountain Dwarf",armor:10,initiative:2,user_id:1)
    Character.create(health:1,strength:14,wisdom:20,dexterity:15,
    intelligence:20,charisma:20,constitution:12,level:20,image:"https://cms.qz.com/wp-content/uploads/2018/08/gandalf-lord-of-the-rings-e1534255368438.jpg?quality=75&strip=all&w=900&h=900&crop=1",
    darkvision:30,speed:30,proficiency:2,name:"Gandalf",class_type:"Wizard",race:"Human",armor:10,initiative:2,user_id:1)
# User.create(name:"Nimr")

