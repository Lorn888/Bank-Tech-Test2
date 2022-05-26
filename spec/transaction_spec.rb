require './lib/transaction'

describe Transaction do

    describe '#deposit' do
        it 'sets type to credit' do
            subject.deposit(10)
            expect(subject.type).to eq 'credit'
        end

        it 'sets amount to the amount passed' do
            subject.deposit(10)
            expect(subject.amount).to eq 10
        end
    end
end