class Transaction

    def initialize(type, amount)
        @type = type
        @amount = amount
    end

    def type
        @type
    end

    def amount
        @amount
    end

    def deposit(amount)
        @type = 'credit'
    end
end