#import "@preview/timeliney:0.0.1"
== Представить общий вид жизненного цикла программного проекта в графическом виде

Длина одного спринта 1 неделя

Обоснование длины спринта: Короткие сроки и наличие паралельной работы требуют
высокой частоты синхронизации планирования, и следовательно коротких спринтов.

Из исходных данных длительность проекта не должна превышать *8 недель*. Также известно, что добавление нового функционала предварительно оценивается в *7 недель*. 


#timeliney.timeline(
  show-grid: true,
  {
    import timeliney: *
      

    headerline(
      group(..range(8).map(n => strong("" + str(n + 1)))),
    )
  
    taskgroup(title: [*Подготовка*], {
      task("Планирование задач", (0, 1), style: (stroke: 2pt + yellow))
    })

    taskgroup(title: [*MVP*], {
      task("Разработка", (1, 3), style: (stroke: 2pt + red))
      task("Тестирование", (3, 5), style: (stroke: 2pt + blue))
    })

    taskgroup(title: [*Основное движение*], {
      task("Доработка продукта", (3, 7), style: (stroke: 2pt + red))
      task("Приемочное тестирование", (5, 7), style: (stroke: 2pt + blue))
    })
    taskgroup({
      task([*Запасная неделя*], (7, 8), style: (stroke: 2pt + green))
    })

    milestone(
      at: 3,
      style: (stroke: (dash: "dashed")),
      align(center, [
        *MVP ready*
        ])
    )

    milestone(
      at: 7,
      style: (stroke: (dash: "dashed")),
      align(center, [
        *App ready*
      ])
    )
  }
)

