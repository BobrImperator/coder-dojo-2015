describe Game::Neighbours do
  #..*.
  #....
  #****
  #.***
  let(:world) { '..*.....****.***' }
  let(:world_dimension) {4}
  let(:neighbours) {described_class.new(index, world, world_dimension)}

  context 'position 10' do
    let(:index) { 10 }

    it {expect(neighbours.live_amount).to eq(5)}
    it {expect(neighbours.all).to match_array([9, 11, 5, 6, 7, 15, 13, 14])}
  end

  context 'position 2' do
    let(:index) { 2 }

    it {expect(neighbours.live_amount).to eq(0)}
    it {expect(neighbours.all).to match_array([1, 3, 5, 6, 7])}
  end
end
