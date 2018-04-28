class ResultCalculator
  def initialize
    # в этой переменной хранятся результаты прохождения теста на общительность
    @results = [
      # >= 30 баллов
        "Что скрывать, вы некоммуникабельны, и страдаете от этого прежде всего " \
        "сами. Но и окружающим очень  трудно с вами, ведь там, где необходимы " \
        "совместные усилия, вы совершенно теряетесь. Почему вы  так неохотно " \
        "общаетесь? Неужели в вашем окружении совсем нет интересных людей? " \
        "Попробуйте потренировать свою общительность — обращайтесь к людям с " \
        "различными вопросами, пусть даже для начала они будут касаться только " \
        "работы.",
      # 25–29 баллов
        "Вы неразговорчивы, предпочитаете одиночество шумным компаниям. Друзей у " \
        "вас совсем немного. Новая работа и новые люди вызывают у вас чувство " \
        "дискомфорта. Эта особенность характера не ускользнула от вашего " \
        "внимания, и вы часто сердитесь на себя за нее. Вспомните, как легко вы " \
        "общаетесь, когда чем то очень увлечены. Ведь можете же, когда хотите.",
      # 19-24 балла
        "В целом вы общительный человек. Новая обстановка и новые проблемы вас не " \
        "пугают. И все таки с людьми вы сходитесь осторожно, постепенно, " \
        "публично высказываетесь неохотно. Иногда ваши высказывания саркастичны, " \
        "даже безо всякого на то основания.",
      # 14-18 балла
        "С коммуникабельностью у вас все в порядке. Вы любознательны, терпеливы, " \
        "внимательно слушаете интересного собеседника, спокойно отстаиваете свою " \
        "точку зрения. Встреча с новыми людьми не вызывает у вас неприятных " \
        "ощущений. Но многолюдные места, шумные компании и болтливые люди " \
        "вызывают у вас раздражение.",
      # 9-13 балла
        "Вы весьма общительны, не так ли? Ваши любопытство, разговорчивость, " \
        "вспыльчивость вызывают у некоторых людей раздражение и заставляют " \
        "думать о вас как о легкомысленном человеке. Вы легко знакомитесь с " \
        "новыми людьми, вам нравятся большие компании, особенно если вы " \
        "находитесь в центре всеобщего внимания. Вам не помешает выработать в " \
        "себе немного терпения и усидчивости, необходимых для решения серьезных " \
        "проблем.",
      # 4-8 балла
        "Вы, кажется, знакомы со всеми и все всегда обо всех знаете. Вы любите " \
        "принимать участие в различных обсуждениях, хотя серьезные темы кажутся " \
        "вам ужасно скучными. Привыкли высказываться даже в том случае, если " \
        "недостаточно компетентны в обсуждаемом вопросе. Беретесь за любое дело, " \
        "хотя не всегда можете успешно довести его до конца. Неудивительно, что " \
        "руководители и коллеги относятся к вам с недоверием и никто не хочет " \
        "выполнять с вами совместные задания.",
      # <3 балла
        "Ваша общительность чрезмерна. Вы говорливы, многословны, вспыльчивы, " \
        "обидчивы, часто необъективны. Вы вмешиваетесь в дела, которые не имеют " \
        "к вам никакого отношения. Беретесь судить о проблемах, в которых " \
        "совершенно не разбираетесь. Часто из-за вас возникают конфликты. С " \
        "серьезной работой вы справиться не в состоянии. Людям очень трудно с " \
        "вами. Вам необходимо воспитывать в себе терпение, сдержанность и " \
       "уважительное отношение к людям."
    ]
    # в этой переменной хранятся баллы ,которые набирает во время теста интервьюируемый
    @points = 0

  end

  def get_result_text(points)
    # Метод возвращает результат прохождения теста в зависимости от заработанных баллов
    case
      when points >= 30
      @results[0]
     when points >= 25
      @results[1]
     when points >= 19
      @results[2]
     when points >= 14
      @results[3]
     when points >= 9
      @results[4]
     when points >= 4
      @results[5]
     when points >= 0
      @results[6]
    end
  end
end
