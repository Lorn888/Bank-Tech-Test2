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
            @date = Time.now.strftime("%d/%m/%Y")
            subject.deposit(20)
            subject.withdrawl(5)
            statement = "date || credit || debit || balance\n#{@date} || || 5.00 || 15.00\n#{@date} || 20.00 || || 20.00\n"
      expect { subject.print_statement }.to output(statement).to_stdout
        end
    end
end