# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160728151234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "operations", force: :cascade do |t|
    t.string   "certifier_name"
    t.string   "certifier_website"
    t.string   "certifier_email"
    t.string   "operation_id"
    t.string   "operation_name"
    t.string   "other_operation_names"
    t.string   "client_id"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "certification_status"
    t.datetime "certification_status_effective_on"
    t.string   "crops_certification_status"
    t.datetime "crops_status_effective_on"
    t.text     "crops_products"
    t.text     "crops_additional_products"
    t.string   "crops_certificate_number"
    t.string   "livestock_certification_status"
    t.datetime "livestock_status_effective_on"
    t.text     "livestock_products"
    t.text     "livestock_additionsl_products"
    t.string   "livestock_certificate_number"
    t.string   "wild_crops_certificate_status"
    t.datetime "wild_crops_status_effective_on"
    t.text     "wild_crops_products"
    t.text     "wild_crops_additional_products"
    t.string   "wild_crops_certificate_number"
    t.string   "handling_certification_status"
    t.datetime "handling_status_effective_on"
    t.text     "handling_products"
    t.text     "handling_additional_prdocuts"
    t.string   "handling_certificate_number"
    t.string   "physical_address"
    t.string   "physical_address2"
    t.string   "phsyical_city"
    t.string   "physical_state"
    t.string   "physical_country"
    t.string   "physical_zip"
    t.string   "mailing_address"
    t.string   "mailing_address2"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.string   "mailing_country"
    t.string   "mailing_zip"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.text     "additional_information"
    t.boolean  "broker"
    t.boolean  "csa"
    t.boolean  "co_packer"
    t.boolean  "dairy"
    t.boolean  "distrbutor"
    t.boolean  "marketer"
    t.boolean  "restaurant"
    t.boolean  "retail"
    t.boolean  "poultry"
    t.boolean  "private_labeler"
    t.boolean  "slaugher_house"
    t.boolean  "storage"
    t.boolean  "grower_group"
    t.datetime "date_as_of"
  end

end
