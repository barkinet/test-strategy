require 'rails_helper'
require 'support/example_custom_matcher'

describe User do
  let!(:user) { create :user }

  # class method is a method on ruby class (User) like:
  # def self.class_method
  #   puts 'class method'
  # end
  describe '#class_method' do
    context 'changing_variable is present' do

      it 'does a thing' do

      end
    end

    context 'changing_variable is not present' do

      it 'does a different thing' do
        #
      end
    end
  end

  # instance method is a method defined on the ruby class (User), such as:
  # def instance_method
  #   puts 'instance_method'
  # end
  describe '.instance_method' do

    it 'uses custom constraint' do
      expect {
        user.instance_method
      }.to example_custom_constraint(:expected_outcome)
    end
  end
end

