require 'person'

RSpec.describe Person do
  let(:person_with_middle_name) { Person.new(first_name: 'Mickael', middle_name: 'JLS', last_name: 'Fosso')}
  let(:person_without_middle_name) { Person.new(first_name: 'Mickael', last_name: 'Fosso')}
  describe '#full_name' do
    it 'concatenates first name, middle name, and last name with spaces' do
      expect(person_with_middle_name.full_name).to eq('Mickael JLS Fosso')
    end

    it 'does not add extra spaces if middle name is missing' do
      expect(person_without_middle_name.full_name).to eq('Mickael Fosso')
    end
  end

  describe '#full_name_with_middle_initial' do
    it 'concatenates first first name, middle name first letter, and last name with spaces' do
      expect(person_with_middle_name.full_name_with_middle_initial).to eq('Mickael J Fosso')
    end
    it 'does not add extra spaces if middle name is missing' do
      expect(person_without_middle_name.full_name_with_middle_initial).to eq('Mickael Fosso')
    end
  end

  describe '#initials' do
    it 'returns the first letter of each name' do
      expect(person_with_middle_name.initials).to eq('MJF')
    end
    it 'returns the first letter of first name last name if middle name is missing' do
        expect(person_without_middle_name.initials).to eq('MF')
      end
  end
end
