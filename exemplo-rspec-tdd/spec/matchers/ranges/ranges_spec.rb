describe (1..5), 'Ranges' do
	it '#cover' do
		expect(subject).to cover(2)
		expect(subject).to cover(3,5)
		expect(subject).not_to cover(0,6)
	end

	# aula 26:
	# abaixo estão exemplos de códigos usando o "one-liner syntax"
	it { is_expected.to cover(2) }
	it { is_expected.to cover(3,5) }
	it { is_expected.not_to cover(0,6) }

	it { expect(subject).to cover(2) }
end
