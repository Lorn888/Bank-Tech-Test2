require './lib/account'

describe Account do
    context 'when user makes a deposit' do
        let(:transaction) { double :transaction, type: 'deposit', amount: 5, balance: 0 }

        it 'returns Succesful deposit message' do
            expect(subject.new_transaction('deposit',5)).to eq 'Deposit of £5 was successful'
        end
        it 'increases balance by given amount' do
            expect(subject.new_transaction('deposit', 15))
            expect(subject.balance).to eq 15
        end
        it 'creates new transaction' do
            expect(transaction).to receive(:new)
            subject.new_transaction('deposit', 5, transaction)
        end

    end
    context 'when user makes a withdrawl' do
        let(:transaction) { double :transaction, type: 'withdrawl', amount: 5, balance: 10 }
        before { subject.new_transaction('deposit', 10) }

        it 'returns "Successful Withdrawl" message' do
            expect(subject.new_transaction('withdrawl', 5)).to eq 'Withdrawl of £5 was successful'
        end

        it 'increases balance by given amount' do
            expect(subject.new_transaction('withdrawl', 5))
            expect(subject.balance).to eq 5
        end

        it 'creates new transaction' do
            expect(transaction).to receive(:new)
            subject.new_transaction('withdrawl', 5, transaction)
        end
        
    end
    
end