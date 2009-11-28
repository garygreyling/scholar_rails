class ImportController < ApplicationController
  def create
    @errors = SpreadsheetImport.new(model_class, spreadsheet).import
    if @errors
      render :text => @errors.to_yaml
    else
      redirect_to students_path
    end
  end

  private
  def upload
    Upload.create(:document => params[:spreadsheet], :account => current_account)
  end

  def spreadsheet
    Excel.new(upload.document.path)
  end

  def model_class
    params[:model_class]
  end
end
