class AddColumnsToOperations < ActiveRecord::Migration[5.0]
  def change
    add_column :operations, :certifier_name, :string
    add_column :operations, :certifier_website, :string
    add_column :operations, :certifier_email, :string
    add_column :operations, :operation_id, :string
    add_column :operations, :operation_name, :string
    add_column :operations, :other_operation_names, :string
    add_column :operations, :client_id, :string
    add_column :operations, :contact_first_name, :string
    add_column :operations, :contact_last_name, :string
    add_column :operations, :certification_status, :string
    add_column :operations, :certification_status_effective_on, :timestamp
    add_column :operations, :crops_certification_status, :string
    add_column :operations, :crops_status_effective_on, :timestamp
    add_column :operations, :crops_products, :text
    add_column :operations, :crops_additional_products, :text
    add_column :operations, :crops_certificate_number, :string
    add_column :operations, :livestock_certification_status, :string
    add_column :operations, :livestock_status_effective_on, :timestamp
    add_column :operations, :livestock_products, :text
    add_column :operations, :livestock_additionsl_products, :text
    add_column :operations, :livestock_certificate_number, :string
    add_column :operations, :wild_crops_certificate_status, :string
    add_column :operations, :wild_crops_status_effective_on, :timestamp
    add_column :operations, :wild_crops_products, :text
    add_column :operations, :wild_crops_additional_products, :text
    add_column :operations, :wild_crops_certificate_number, :string
    add_column :operations, :handling_certification_status, :string
    add_column :operations, :handling_status_effective_on, :timestamp
    add_column :operations, :handling_products, :text
    add_column :operations, :handling_additional_prdocuts, :text
    add_column :operations, :handling_certificate_number, :string
    add_column :operations, :physical_address, :string
    add_column :operations, :physical_address2, :string
    add_column :operations, :phsyical_city, :string
    add_column :operations, :physical_state, :string
    add_column :operations, :physical_country, :string
    add_column :operations, :physical_zip, :string
    add_column :operations, :mailing_address, :string
    add_column :operations, :mailing_address2, :string
    add_column :operations, :mailing_city, :string
    add_column :operations, :mailing_state, :string
    add_column :operations, :mailing_country, :string
    add_column :operations, :mailing_zip, :string
    add_column :operations, :phone, :string
    add_column :operations, :email, :string
    add_column :operations, :website, :string
    add_column :operations, :additional_information, :text
    add_column :operations, :broker, :boolean
    add_column :operations, :csa, :boolean
    add_column :operations, :co_packer, :boolean
    add_column :operations, :dairy, :boolean
    add_column :operations, :distrbutor, :boolean
    add_column :operations, :marketer, :boolean
    add_column :operations, :restaurant, :boolean
    add_column :operations, :retail, :boolean
    add_column :operations, :poultry, :boolean
    add_column :operations, :private_labeler, :boolean
    add_column :operations, :slaugher_house, :boolean
    add_column :operations, :storage, :boolean
    add_column :operations, :grower_group, :boolean
    add_column :operations, :date_as_of, :timestamp
  end
end
