class ExcelDataParser
  def initialize(file_path)
    @file_path = file_path
    @records = []
    @counter = 1
  end

  BATCH_IMPORT_SIZE = 1000

  def call(sheet_num: 0)
    rows.each do |row|
      increment_counter
      records << build_new_record(row)
      import_records if reached_batch_import_size? || reached_end_of_file?
    end
  end

  private

  attr_reader :file_path, :records
  attr_accessor :counter

  def star_file
    @star_file ||= Creek::Book.new(file_path)
  end

  # in this example, we assume that the
  # content is in the first Excel sheet
  def rows
    @rows ||= star_file.sheets.first.rows
  end

  def increment_counter
    self.counter += 1
  end

  def row_count
    @row_count ||= rows.count
  end

  def build_new_record(row)
    # only build a new record without saving it
    RecordModel.new(...)
  end

  def import_records
    # save multiple records using activerecord-import gem
    RecordModel.import(records)

    # clear records array
    records.clear
  end

  def reached_batch_import_size?
    (counter % BATCH_IMPORT_SIZE).zero?
  end

  def reached_end_of_file?
    counter == row_count
  end
end