require 'rails_helper'
require 'support/example_custom_matcher'

describe User do
  let!(:user) { create :user }

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

  describe '.instance_method' do

    it 'uses custom constraint' do
      expect {
        user.instance_method
      }.to example_custom_constraint(:expected_outcome)
    end
  end
end

