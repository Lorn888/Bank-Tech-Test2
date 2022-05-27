require './lib/transaction'

describe Transaction do
    @date = Time.now.strftime("%d/%m/%Y")
    subject(:transaction) {described_class.new(@date)}
    it 'is initialized with current date' do
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
    end
end