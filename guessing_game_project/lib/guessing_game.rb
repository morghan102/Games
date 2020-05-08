class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end

# getters
    def num_attempts
        @num_attempts
    end
    def game_over?
        @game_over
    end

    #instance method
    def check_num(num)
        @num_attempts += 1
        if @secret_num == num
            @game_over = true
            p "you win"
        elsif num > @secret_num
            p "too big"
        else
            p "too small"
        end
    end

    def ask_user
        p "enter a number"
        input = gets.chomp.to_i
        # GuessingGame.check_num(input)
        self.check_num(input)
    end
end
