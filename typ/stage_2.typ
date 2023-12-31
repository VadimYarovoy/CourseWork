#import "@preview/cetz:0.1.2"
#import "@preview/tablex:0.0.6": *

== Определить необходимые ресурсы для выполнения программного проекта

Материальные ресурсы были определены из предположения, что работа над проектом ведется в дистанционном режиме.
// Сотрудникам предоставляется только следующая техника на все время проекта: 
=== Ресурсы
*Материальные ресурсы*

#align(center)[
    #tablex(
        columns: 3,
        [Название], [Количество], [Комментарий],
        [Ноутбук], [9], [Предоставляются из резерва организации],
        [Сервер], [2], [Для тестирования и развертывания приложения Предоставляются из резерва организации],
    )
]

*Инструментальные*:


#align(center)[
    #tablex(
        columns: 3,
        [Название], [Количество], [Комментарий],
        [Fedora GNU/Linux], [9], [Операционная система, установленная на ноутбуках сотрудников. ОС распространяется *бесплатно*.],
        [Kubernetes], [1], [Система развертывания ПО. Используется для запуска систем инструментов разработки и тестовых стендов --- *бесплатно*],
        [Visual Studio Code],[8],[Используется для эффективного написания кода, отладки и разработки автоматизированных тестов. IDE распространяется *бесплатно*.],
        [Teams],[1],[Используется для комуникации. Закупаются *платные лицензии* для всех сотрудников.],
        [GitLab],[1],[Система управления репозиториями с кодом --- *бесплатно*],
        [GitLab CI/CD],[1],[Система CI/CD --- *бесплатно*],
        [Artifactory], [1], [Система трекинга программных артефактов --- *бесплатно*],
        [Allure], [1], [Система трекинга артефактов тестирования --- *бесплатно*],
        [Jira],[9],[Используется для отслеживания задач и хранения записей об ошибках. Закупаются *платные лицензии* для всех сотрудников.],
        [Confluence],[9],[Используется для ведения документации. Закупаются *платные лицензии* для всех сотрудников.],
        [ActiveDirectory],[9],[Система менеджмента единых аккаунтов сотрудников. Закупаются *платные лицензии* для всех сотрудников.],
    )
]

Все перечисленные ресурсы требуются на все время проекта

=== Штат проекта:

Численность и объем занятости:
- 6 разработчиков (40 час/нед)
  - 1 senior
  - 3 middle
  - 2 junior
- 2 тестировщика (40 час/нед)
  - 1 middle
  - 1 junior
- 1 Scrum Master (один из разработчиков, +4 час/нед)
- 1 проектный менеджер (40 час/нед)

=== Финансовые ресурсы

Часть зарплаты сотрудникам выплачивается после завершения проекта в случае, если заказчика удовлетворил результат. Это указывается в заключаемом договоре. 

Заработная плата для сотрудников проекта (включая налоги и отчисления):
- Разработчики и тестировщики:
  - senior: $3x$
  - middle: $2x$
  - junior: $x$
- Scrum Master: $+0.1x$
- Проектный менеджер: $2.5x$
- Сумма з/п: $16.6x$

Текущих расходы:
- Аренда, коммунальные услуги и др.: $20x$
- Плата за аппаратные средства (амортизированное): $10x$
- Плата за лицензии ПО: $5x$
- Сумма т/р: $35x$

Сумма расходов: $49.6x$
Амортизация рисков: $5%$ от суммы = $2.48$
Сумма: $52.08$

#import "@preview/plotst:0.1.0": *

// create the sample data
#let data = ((3, "(" + repr(calc.round(3 / 52.08, digits: 4) * 100) + "%) З/п Senior"),
            (6,  "(" + repr(calc.round(6 / 52.08, digits: 3) * 100) + "%) З/п Middle"),
            (2,  "(" + repr(calc.round(2 / 52.08, digits: 3) * 100) + "%) З/п Junior"),
            (0.1,"(" + repr(calc.round(0.1 / 52.08, digits: 3) * 100) + "%) З/п Scrum-master"),
            (20, "(" + repr(calc.round(20 / 52.08, digits: 3) * 100) + "%) Аренда и проч."),
            (10, "(" + repr(calc.round(10 / 52.08, digits: 3) * 100) + "%) Аппаратные средства"),
            (5,  "(" + repr(calc.round(5 / 52.08, digits: 3) * 100) + "%) Лицензии ПО"),
            (2.48,"(" + repr(calc.round(2.48 / 52.08, digits: 3) * 100) + "%) Риски"))
#let colors =   ( color.mix((yellow, 100%), (red, 50%))
                , color.mix((yellow, 100%), (red, 30%))
                , color.mix((yellow, 100%), (red, 5%)) 
                , color.mix((yellow, 100%), (red, 85%))
                , color.mix((blue, 100%), (red, 50%))  
                , color.mix((blue, 100%), (red, 25%))  
                , color.mix((blue, 100%), (red, 12%))
                , green
)
// Skip the axis step, as no axes are needed

// Put the data into a plot 
#let p = plot(data: data)

// Display the pie_charts in all different display ways
#align(center)[
    #pie_chart(p, (100%, 20%), colors: colors, display_style: "hor-chart-legend", caption: [Финансовые ресурсы]) 
]

Компания представляет собой индивидуальное предприятие (ИП), которое работает с применением упрощенной системы налогообложения (УСН). Вариант УСН, который был выбран, называется "Доходы" и включает в себя налоговую ставку в размере 6% от общей выручки ИП

#pagebreak()