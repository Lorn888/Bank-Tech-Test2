require './lib/account'

describe Account do
    describe '#deposit' do
        it 'increaes balance by 5' do
            subject.deposit(5)
            expect(subject.balance).to eq 5
        end
        it 'returns Succesful deposit message' do
            expect(subject.deposit(5)).to eq 'Succesful deposit of 5'
        end
    end

    describe '#withrawl' do
        it 'decreaqses balance by 5' do
            subject.deposit(20)
            subject.withdrawl(5)
            expect(subject.balance).to eq 15
        end
    end

    describe '#transactions' do

        let(:transaction) { double :transaction}

        before do
            allow(transaction).to receive(:deposit)
            allow(transaction).to receive(:withdrawl)
        end

        it 'returns an empty array' do
            expect(subject.transactions).to eq []
        end

        it 'returns some transaction after one was made' do
            subject.deposit(5, transaction)
            expect(subject.transactions).to include transaction
        end
        it 'returns two transactions after one withdrawl and one deposit' do
            subject.deposit(5, transaction)
            subject.withdrawl(2, transaction)
            expect(subject.transactions).to eq [transaction, transaction]
        end
    end
    
end