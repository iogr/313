require 'film'

describe Film do
  let(:film) do
    described_class.new('Tenet', 'Christopher Nolan', '2020')
  end

  describe '#to_s' do
    it 'returns human information about film' do
      # "#{director} - #{title} (#{year})"
      expect(film.to_s).to eq "Christopher Nolan - Tenet (2020)"
    end
  end
end
