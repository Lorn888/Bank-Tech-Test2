require './bank'

describe Bank do 
    describe 'deposit' do
        it 'increaes balance by 5' do
            subject.deposit(5)
            expect(subject.balance).to eq 5
        end
    end
    describe 'withdrawl' do
        it 'decreaqses balance by 5' do
            subject.deposit(20)
            subject.withdrawal(5)
            expect(subject.balance).to eq 15
        end
    end
end