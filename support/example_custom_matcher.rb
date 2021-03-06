RSpec::Matchers.define :example_custom do |constraint_name|
  supports_block_expectations
  match do |code_to_test|
    begin
      code_to_test.()
      false
    rescue ActiveRecord::StatementInvalid => ex
      ex.message =~ /#{constraint_name}/
    end
  end
end
