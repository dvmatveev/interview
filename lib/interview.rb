class Interview
  def make(questions)
    points = 0
    questions.each  do |question|
      puts question.chomp

      # Цикл, повторяющий просьбу ввести ответ до тех пор, пока не будет введен
      # один из предлагаемых вариантов
      user_input = 0
      until user_input == 1 || user_input == 2 || user_input == 3
        puts "Введите число и нажмите Enter:"
        puts "1 — да"
        puts "2 — нет"
        puts "3 — иногда"
        # Записываем ответ пользователя из консоли, переведя его в число
        user_input = gets.to_i
      end
      # Заносим баллы за ответ в объект result_calculator, в нём хранятся ответы, вычисляемые согласно заработанным баллам
      case
        when user_input == 1
          points += 2
        when user_input == 3
          points += 1
      end
    end
    points
  end
end
