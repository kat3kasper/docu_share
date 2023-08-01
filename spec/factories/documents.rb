FactoryBot.define do
  factory :document do
    # Add an Active Storage attachment to the factory
    after(:build) do |document|
      document.file.attach(io: File.open(Rails.root.join('spec', 'fixtures', 'files', 'codepath_challenge.md')),
                        filename: 'codepath_challenge.md')
    end
  end
end