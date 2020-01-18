require 'database_cleaner'

Database.clean_with :truncation
DatabaseCleaner.strategy = :transaction

RSpec.configure do |config|
  config.around(:each) do |example|
    DatabaseCleaner.cleaning { example.run }
  end
end
