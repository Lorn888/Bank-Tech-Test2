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
        let(:statement_printer) { double :statement_printer }
         
        it 'displays user transaction details' do
            transactions = subject.account.transactions
            expect(statement_printer).to receive(:to_string).with(transactions)
            subject.print_statement(statement_printer)
        end
    end
end