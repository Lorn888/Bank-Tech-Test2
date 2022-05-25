class Account

    attr_reader :balance

    def initialize
        @balance = 0
    end

    def deposit(amount)
        @balance += amount
        "Succesful deposit of #{amount}"
    end

    def withdrawl(amount)
        @balance -= amount
    end
    
    def transactions
        []
    end
end