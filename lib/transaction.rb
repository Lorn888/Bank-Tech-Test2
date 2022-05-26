class Transaction
    attr_reader :type, :amount
    def initialize
        @type
        @amount
    end

    def deposit(amount)
        @type = 'credit'
        @amount = amount
    end

    def withdrawl(amount)
        @type = 'debit'
    end
end