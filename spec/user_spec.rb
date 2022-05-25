require './lib/account'

describe Account do
    describe '#deposit' do
        it 'increaes balance by 5' do
            subject.deposit(5)
            expect(subject.balance).to eq 5
        end
    end

    describe '#withrawl' do
        it 'decreaqses balance by 5' do
            subject.deposit(20)
            subject.withdrawl(5)
            expect(subject.balance).to eq 15
        end
    end
    
end