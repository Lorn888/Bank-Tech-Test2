require './lib/transaction'

describe Transaction do


    subject(:transaction) { described_class.new('credit', 100) }
    
    describe '#type' do
        it 'returns type instance variable' do
            expect(subject.type).to eq 'credit'
        end
    end

    describe '#amount' do
        it 'returns amount instance variable' do
            expect(subject.amount).to eq 100
        end
    end
end