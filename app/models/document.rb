class Document < ApplicationRecord
  MARKDOWN_FILE_EXTENSION = "md"

  has_one_attached :file

  validates :shared_id, uniqueness: true

  def is_markdown_file?
    file.filename.extension == MARKDOWN_FILE_EXTENSION
  end
end
