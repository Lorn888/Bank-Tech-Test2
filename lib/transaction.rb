class Transaction

    def initialize
        @type
        @amount
    end

    def type
        @type
    end

    def amount
        @amount
    end

    def deposit(amount)
        @type = 'credit'
        @amount = amount
    end
end