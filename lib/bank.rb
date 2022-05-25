class Bank
    attr_reader :balance

    def initialize
        @balance = 0
        @account = Account.new
    end

    def deposit(amount)
        @balance = @account.deposit(amount)
    end

    def withdrawl(amount)
        @balance = @account.withdrawl(amount)
    end
    
end