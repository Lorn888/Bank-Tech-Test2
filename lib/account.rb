class Account

    attr_reader :balance

    def initialize
        @balance = 0
        @transactions = []
    end

    def deposit(amount)
        @balance += amount
        @transactions << 'some transaction'
        "Succesful deposit of #{amount}"
    end

    def withdrawl(amount)
        @balance -= amount
    end
    
    def transactions
        @transactions
    end
end