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
        @account.withdrawl(amount)
    end
    
end