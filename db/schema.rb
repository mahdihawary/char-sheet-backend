# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2020_11_29_151507) do
  create_table "abilities", force: :cascade do |t|
    t.string "class"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "level"
  end

  create_table "character_abilities", force: :cascade do |t|
    t.integer "character_id"
    t.integer "ability_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_skills", force: :cascade do |t|
    t.integer "character_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_spells", force: :cascade do |t|
    t.integer "character_id"
    t.integer "spell_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer "health"
    t.integer "strength"
    t.integer "wisdom"
    t.integer "dexterity"
    t.integer "intelligence"
    t.integer "charisma"
    t.integer "constitution"
    t.integer "level"
    t.string "image"
    t.integer "darkvision"
    t.integer "speed"
    t.integer "proficiency"
    t.string "name"
    t.string "class_type"
    t.string "race"
    t.string "armor"
    t.integer "initiative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "skills"
    t.string "spells"
  end

  create_table "class_types", force: :cascade do |t|
    t.string "desc"
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "spellcaster"
  end

  create_table "races", force: :cascade do |t|
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "image"
    t.string "ability"
    t.integer "ability_score"
    t.integer "darkvision"
    t.integer "speed"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "ability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "desc"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.string "description"
    t.string "class_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "class_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
