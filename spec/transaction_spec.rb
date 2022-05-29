require './lib/transaction'

describe Transaction do
    
    it 'is initialized with current date' do
        @date = Time.now.strftime("%d/%m/%Y")
        expect(subject.date).to eq @date
    end

    describe '#deposit' do

        it 'sets type to credit' do
            subject.deposit(10)
            expect(subject.type).to eq 'credit'
        end

        it 'sets amount to the amount passed' do
            subject.deposit(10)
            expect(subject.amount).to eq 10
        end

        it 'sets balance to balance passed and deposit amount' do
            @current_balance = 20
            subject = Transaction.new(@current_balance)
            subject.deposit(10)
            expect(subject.balance).to eq 30
        end
    end

    describe '#withdrawl' do 

        it 'sets type to debit' do
            subject.withdrawl(10)
            expect(subject.type).to eq 'debit'
        end

        it 'sets amount to the amount passed' do
            subject.deposit(10)
            expect(subject.amount).to eq 10
        end

        it 'sets balance to balance passed minus withdrawal amount' do
            @current_balance = 10
            subject = Transaction.new(@current_balance)
            subject.withdrawl(5)
            expect(subject.balance).to eq 5
        end
    end
end