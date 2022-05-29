require_relative './account'

class Bank
    attr_reader :account

    def initialize
        @account = Account.new
    end

    def deposit(amount)
        @account.deposit(amount)
    end

    def withdrawl(amount)
        fail 'Withdrawal failed. Amount exceeds account balance' if exceeds_balance(amount)
        @account.withdrawl(amount)
    end

    def print_statement
        @strings = ["date || credit || debit || balance"]
        @account.transactions.reverse.map do |transaction|
            if transaction.type == 'credit'
                @strings << "#{transaction.date} || #{transaction.amount}.00 || || #{transaction.balance}.00"
            else
                @strings << "#{transaction.date} || || #{transaction.amount}.00 || #{transaction.balance}.00"
            end
        end
        puts @strings.join("\n").strip
    end

    private

    def exceeds_balance(amount)
        amount> @account.balance
    end


    
end