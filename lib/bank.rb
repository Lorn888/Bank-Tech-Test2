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
        
    end

    def exceeds_balance(amount)
        amount> @account.balance
    end


    
end