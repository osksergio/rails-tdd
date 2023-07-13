# exemplo de string no describe
# o "subject" corresponde ao objeto que estiver
#    no describe (classe, array, string, etc)
describe 'Sergio' do
	it 'string' do
		expect(subject.size).to eq(6)
	end
end

describe [1, 2, 3] do
  it 'array' do
  	expect(subject).to be_kind_of(Array)
  end
end
