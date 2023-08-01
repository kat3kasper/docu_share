require 'rails_helper'

RSpec.describe Document, type: :model do
  after do
    # Purge uploaded files after each test
    ActiveStorage::Attachment.all.each(&:purge)
  end

  it 'has an attached file' do
    document = FactoryBot.create(:document)
    expect(document.file).to be_attached
  end
end