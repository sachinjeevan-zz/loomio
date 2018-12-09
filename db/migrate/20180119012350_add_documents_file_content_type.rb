class AddDocumentsFileContentType < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :documents, :file_content_type, :string
  end
end
