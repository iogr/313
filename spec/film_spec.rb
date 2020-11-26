require 'film'

describe Film do
  let(:film) do
    described_class.new('Tenet', 'Christopher Nolan', '2020')
  end

  describe '#to_s' do
    it 'returns human information about film' do
      expect(film.to_s).to eq "Christopher Nolan - Tenet (2020)"
    end
  end

    describe '.new' do
    it 'creates object with right attributes' do
      expect(film.title).to eq 'Tenet'
      expect(film.director).to eq 'Christopher Nolan'
      expect(film.year).to eq '2020'
    end
  end
end
