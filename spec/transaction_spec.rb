require './lib/transaction'

describe Transaction do


    subject(:transaction) { described_class.new('credit') }
    
    describe '#view_type' do
        it 'returns instance variable' do
            expect(subject.type).to eq 'credit'
        end
    end
end