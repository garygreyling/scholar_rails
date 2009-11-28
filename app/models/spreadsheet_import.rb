class SpreadsheetImport
  def initialize(model_class, spreadsheet)
    @model_class, @spreadsheet = model_class, spreadsheet
    @fields = load_fields
    @values = load_values
  end

  def import
    result = @model_class.constantize.import(@fields, @values)
    return nil if result.failed_instances.blank?
    return result
  end

  def load_fields
    YAML::load_file(File.join(RAILS_ROOT, "config/spreadsheet_import.yaml"))[@model_class]
  end

  def load_values
    @spreadsheet.default_sheet = @spreadsheet.sheets.first
    current_row = 2
    values = []
    while @spreadsheet.row(current_row)
      values << @spreadsheet.row(current_row)
      current_row+=1
    end
    return values
  end
end