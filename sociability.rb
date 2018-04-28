require_relative 'lib/result_calculator'
require_relative 'lib/interview'


def read_from_file(file_name)
    return unless File.exist?(file_name)
    File.readlines(file_name, encoding: 'UTF-8')
end

# encoding: utf-8
#
# Тест на уровень коммуникабельности. Пятая версия.
#
# На основе психологического теста на сайте Синтона
#
# http://www.syntone-spb.ru/library/article_syntone/content/4969.html

version = "Ваш уровень общительности. Тест поможет определить ваш уровень " \
  "коммуникабельности. Версия 0.5. (c)\n\n"

# Выводим информацию о программе
puts version

# Файл с текстом вопросов
questions_file_name = "#{File.dirname(__FILE__)}/data/questions.txt"

# читаем вопросы из файла в массив
questions = read_from_file(questions_file_name)

# класс проводит опрос согласно вопросам, переданным ему, и возвращает баллы, полученные в результате прохождения опроса
interview = Interview.new()

# переменная, где хранятся баллы за ответы
points = interview.make(questions)

puts "\n\nВ результате прохождения теста вы набрали всего баллов - #{points}\n"
puts "Ваш уровень общительности:\n\n"

# класс обработки ответов
result_calculator = ResultCalculator.new

# Выводим содержание результата прохождения теста
puts result_calculator.get_result_text(points)
