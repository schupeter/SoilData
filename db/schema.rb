# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "PEDON_PROJECTS", :force => true do |t|
    t.string  "project_id",   :limit => 10,   :null => false
    t.string  "title",        :limit => 80,   :null => false
    t.integer "year",                         :null => false
    t.string  "purpose",      :limit => 80,   :null => false
    t.string  "abstract",     :limit => 1000, :null => false
    t.string  "geo_class",    :limit => 60,   :null => false
    t.string  "sponsor",      :limit => 40,   :null => false
    t.string  "survey_lead",  :limit => 60,   :null => false
    t.string  "source_table", :limit => 20
    t.string  "credibility",  :limit => 4,    :null => false
  end

  create_table "PEDON_SITES", :force => true do |t|
    t.string  "pedon_id",   :limit => 40,  :null => false
    t.string  "province",   :limit => 4,   :null => false
    t.string  "geo_name",   :limit => 60,  :null => false
    t.integer "geo_lat",                   :null => false
    t.integer "geo_long",                  :null => false
    t.integer "elevation",                 :null => false
    t.integer "tx_year",                   :null => false
    t.string  "tx_order",   :limit => 4,   :null => false
    t.string  "tx_subgrp",  :limit => 12,  :null => false
    t.string  "tx_series",  :limit => 76,  :null => false
    t.string  "tx_code",    :limit => 6,   :null => false
    t.string  "tx_name",    :limit => 60,  :null => false
    t.string  "n_modifier", :limit => 10,  :null => false
    t.string  "n_phase1",   :limit => 50,  :null => false
    t.string  "n_phase2",   :limit => 50,  :null => false
    t.string  "n_variant",  :limit => 40,  :null => false
    t.integer "year",                      :null => false
    t.integer "month",                     :null => false
    t.integer "day",                       :null => false
    t.string  "purpose",    :limit => 40,  :null => false
    t.string  "authority",  :limit => 4,   :null => false
    t.string  "surveyor",   :limit => 60,  :null => false
    t.string  "rep_type",   :limit => 20,  :null => false
    t.string  "extent",     :limit => 20,  :null => false
    t.string  "profile",    :limit => 2,   :null => false
    t.string  "report_id",  :limit => 200, :null => false
    t.string  "project_id", :limit => 10,  :null => false
    t.string  "soil_id",    :limit => 22,  :null => false
  end

  create_table "collections", :force => true do |t|
    t.string "Collection_id", :limit => 60,   :null => false
    t.string "Title",         :limit => 100,  :null => false
    t.string "Purpose",       :limit => 1000, :null => false
    t.string "Abstract",      :limit => 500,  :null => false
  end

  create_table "definitions", :force => true do |t|
    t.string "collection",    :limit => 60,   :null => false
    t.string "property_type", :limit => 60,   :null => false
    t.string "property_id",   :limit => 60,   :null => false
    t.string "title",         :limit => 100,  :null => false
    t.string "abstract",      :limit => 2000, :null => false
  end

  create_table "pedonlayers", :force => true do |t|
    t.string  "pedon_id", :limit => 14, :null => false
    t.string  "layer_no", :limit => 4,  :null => false
    t.integer "u_depth",                :null => false
    t.integer "l_depth",                :null => false
    t.string  "hzn_mas",  :limit => 6,  :null => false
    t.string  "hzn_suf",  :limit => 14, :null => false
    t.string  "hzn_mod",  :limit => 2,  :null => false
    t.string  "hzn_lit",  :limit => 4,  :null => false
  end

  create_table "pedonproperties", :force => true do |t|
    t.string "title",        :limit => 200,  :null => false
    t.string "abstract",     :limit => 2000, :null => false
    t.string "unit",         :limit => 24,   :null => false
    t.string "method",       :limit => 40,   :null => false
    t.string "length",       :limit => 8,    :null => false
    t.string "precision",    :limit => 24,   :null => false
    t.string "numeric",      :limit => 2,    :null => false
    t.string "title_fr",     :limit => 200,  :null => false
    t.string "abstract_fr",  :limit => 2000, :null => false
    t.string "unit_fr",      :limit => 24,   :null => false
    t.string "property_id",  :limit => 38,   :null => false
    t.string "source_table", :limit => 40,   :null => false
    t.string "source_field", :limit => 20,   :null => false
  end

  create_table "pedonvalues", :force => true do |t|
    t.string "pedon_id",    :limit => 14,  :null => false
    t.string "layer_no",    :limit => 4,   :null => false
    t.string "property_id", :limit => 38,  :null => false
    t.string "value",       :limit => 300, :null => false
  end

  create_table "soilproperties", :force => true do |t|
    t.string "Collection_id", :limit => 60, :null => false
    t.string "Soil_id",       :limit => 60, :null => false
    t.string "Property_id",   :limit => 60, :null => false
    t.string "Value",         :limit => 60, :null => false
  end

  create_table "soils", :force => true do |t|
    t.integer "Collection_id",               :null => false
    t.string  "Soil_id",       :limit => 20, :null => false
  end

end
