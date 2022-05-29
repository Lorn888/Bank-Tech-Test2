require './lib/bank'

describe Bank do 
    describe 'deposit' do
        it 'increaes balance by 5' do
            subject.deposit(5)
            expect(subject.account.balance).to eq 5
        end
    end
    describe 'withdrawl' do
        it 'decreaqses balance by 5' do
            subject.deposit(20)
            subject.withdrawl(5)
            expect(subject.account.balance).to eq 15
        end
    end
    describe 'print_statement' do
        it 'displays user transaction details' do
            skip
            subject.deposit(20)
            subject.withdrawl(5)
            expect(subject.print_statement).to eq "date || credit || debit || balance
            14/01/2012 || || 5.00 || 5.00
            10/01/2012 || 20.00 || || 20.00"
        end
    end
end