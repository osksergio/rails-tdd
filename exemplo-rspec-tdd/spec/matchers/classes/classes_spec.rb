describe 'Classes' do |*args|
	it 'be_instance_of' do
		expect(10).to be_instance_of(Integer) # exatamente a classe
	end

	it 'be_kind_of' do
		expect(10).to be_kind_of(Integer) # pode ser por herança
	end

	it 'respond_to' do
		expect('ruby').to respond_to(:size)
		expect('ruby').to respond_to(:count)
	end
end
