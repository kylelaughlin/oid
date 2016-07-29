class OperationsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: OperationsDatatable.new(view_context) }
    end
  end
end
