class OperationsDatatable
  delegate :params, :link_to, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Operation.count,
      iTotalDisplayRecords: operations.total_entries,
      aaData: data
    }
  end

private

  def data
    operations.map do |operation|
      [
        operation.certifier_name,
        operation.operation_name,
        operation.certification_status,
        operation.phsyical_city,
        operation.physical_state,
        operation.physical_country,
        "#{operation.crops_products} #{operation.livestock_products} #{operation.handling_products} #{operation.wild_crops_products}"
      ]
    end
  end

  def operations
    @operations ||= fetch_operations
  end

  def fetch_operations
    operations = Operation.order("#{sort_column} #{sort_direction}")
    operations = operations.page(page).per_page(per_page)
    if params[:search].present?
      operations = operations.where("certifier_name like :search or operation_name like :search or certification_status like :search or phsyical_city like :search or physical_state like :search or physical_country like :search", search: "%#{params[:search][:value]}%")
    end
    operations
  end

  def page
    params[:start].to_i/per_page + 1
  end

  def per_page
    params[:length].to_i > 0 ? params[:length].to_i : 10
  end

  def sort_column
    columns = %w[certifier_name operation_name certification_status phsyical_city physical_state physical_country]
    columns[params[:order]["0"][:column].to_i]
  end

  def sort_direction
    params[:order]["0"][:dir] == "desc" ? "desc" : "asc"
  end
end
