<!-- 
/********************************************************************************
 * File: polls.index.tpl
 * Extention: module 'polls'
 * Description: The `polls.index.tpl` template is used to display a list of polls or a single poll with voting options, results, or status on the main page in the Polls module.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 02 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->

<!-- BEGIN: POLL_VIEW --> <!-- Начало блока формы голосования для активного опроса -->
    <div id="poll_{POLL_ID}"> <!-- Контейнер опроса с уникальным ID, где {POLL_ID} — идентификатор опроса -->
        <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax&poll_theme=index"> <!-- Форма отправки голоса; {POLL_FORM_URL} — URL обработки, классы для AJAX-запроса -->
            <input type="hidden" name="poll_id" value="{POLL_ID}" /> <!-- Скрытое поле с ID опроса для передачи на сервер -->
            <ul class="list-unstyled mb-0"> <!-- Список без стандартных маркеров и отступов снизу -->
                <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа в опросе -->
                    <li class="mb-2"> <!-- Элемент списка с отступом снизу для разделения -->
                        <label class="d-block">{POLL_INPUT}<span class="ms-3">{POLL_OPTION}</span></label> <!-- Метка с элементом ввода (чекбокс/радио) и текстом варианта, занимает всю ширину -->
                    </li> <!-- Закрытие элемента списка -->
                <!-- END: POLLTABLE --> <!-- Конец цикла вариантов ответа -->
                <li> <!-- Элемент списка для кнопки без дополнительных отступов -->
                    <button type="submit" class="btn btn-primary" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button> <!-- Кнопка отправки формы, стили Bootstrap, текст и подсказка из локализации -->
                </li> <!-- Закрытие элемента списка -->
            </ul> <!-- Закрытие списка -->
        </form> <!-- Закрытие формы голосования -->
    </div> <!-- Закрытие контейнера опроса -->
<!-- END: POLL_VIEW --> <!-- Конец блока формы голосования -->

<!-- BEGIN: POLL_VIEW_VOTED --> <!-- Начало блока результатов для уже проголосовавших -->
    <div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами между элементами (gap-3) -->
        <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа -->
            <div class="col-12"> <!-- Колонка Bootstrap, занимает всю ширину -->
                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер: столбец на мобильных, строка на десктопах, с отступами -->
                    <div class="flex-grow-1 small">{POLL_OPTION}</div> <!-- Текст варианта ответа, растягивается, уменьшенный шрифт -->
                    <div class="text-end small" style="min-width: 20%;">{POLL_PERCENT_FROM_TOTAL}% ({POLL_VOTES_COUNT})</div> <!-- Процент и количество голосов, выравнивание вправо, минимум 20% ширины -->
                </div> <!-- Закрытие flex-контейнера -->
                <div class="progress mt-2" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100"> <!-- Bootstrap-прогресс-бар с отступом сверху, атрибуты доступности -->
                    <div class="progress-bar" style="width: {POLL_PERCENT_FROM_TOTAL}%;"></div> <!-- Полоса прогресса с шириной в процентах из {POLL_PERCENT_FROM_TOTAL} -->
                </div> <!-- Закрытие прогресс-бара -->
            </div> <!-- Закрытие колонки -->
        <!-- END: POLLTABLE --> <!-- Конец цикла вариантов -->
    </div> <!-- Закрытие строки результатов -->
    <p class="small text-center">{PHP.L.Votes}: {POLL_VOTERS}</p> <!-- Информация о количестве голосов, уменьшенный шрифт, центрирован -->
<!-- END: POLL_VIEW_VOTED --> <!-- Конец блока для проголосовавших -->

<!-- BEGIN: POLL_VIEW_DISABLED --> <!-- Начало блока для отключенного опроса -->
    <ul class="list-unstyled mb-0"> <!-- Список без маркеров и отступов снизу -->
        <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
            <li class="mb-2">{POLL_OPTION}</li> <!-- Элемент списка с текстом варианта, отступ снизу -->
        <!-- END: POLLTABLE --> <!-- Конец цикла -->
        <li class="text-muted">{PHP.L.rat_registeredonly}</li> <!-- Уведомление о доступе только для зарегистрированных, серый цвет -->
    </ul> <!-- Закрытие списка -->
<!-- END: POLL_VIEW_DISABLED --> <!-- Конец блока отключенного опроса -->

<!-- BEGIN: POLL_VIEW_LOCKED --> <!-- Начало блока для закрытого опроса -->
    <div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами -->
        <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
            <div class="col-12"> <!-- Колонка на всю ширину -->
                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер для размещения -->
                    <div class="flex-grow-1">{POLL_OPTION}</div> <!-- Текст варианта, растягивается -->
                    <div class="text-end" style="min-width: 20%;">{POLL_PERCENT_FROM_TOTAL}% ({POLL_VOTES_COUNT})</div> <!-- Процент и голоса, выравнивание вправо, минимум 20% ширины -->
                </div> <!-- Закрытие flex-контейнера -->
                <div class="progress mt-2" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100"> <!-- Bootstrap-прогресс-бар с отступом сверху, атрибуты доступности -->
                    <div class="progress-bar" style="width: {POLL_PERCENT_FROM_TOTAL}%;"></div> <!-- Полоса прогресса с шириной в процентах из {POLL_PERCENT_FROM_TOTAL} -->
                </div> <!-- Закрытие прогресс-бара -->
            </div> <!-- Закрытие колонки -->
        <!-- END: POLLTABLE --> <!-- Конец цикла -->
    </div> <!-- Закрытие строки -->
    <p>{PHP.L.Date} {POLL_SINCE_SHORT} {PHP.L.Votes} {POLL_VOTERS}</p> <!-- Информация о дате и голосах -->
<!-- END: POLL_VIEW_LOCKED --> <!-- Конец блока закрытого опроса -->

<!-- BEGIN: INDEXPOLLS --> <!-- Начало блока списка опросов на главной -->
    <div class="container"> <!-- Bootstrap-контейнер для всего блока -->
        <!-- BEGIN: POLL --> <!-- Начало цикла отдельных опросов -->
            <div class="mb-3"> <!-- Обёртка для каждого опроса с отступом снизу -->
                <a href="{IPOLLS_URL}"><span class="fw-bold">{IPOLLS_TITLE}</span></a> <!-- Ссылка на опрос, жирный текст -->
                <div class="my-3"> <!-- Контейнер для формы или результатов с отступами сверху и снизу -->
                    {IPOLLS_FORM} <!-- Форма или результаты опроса -->
                </div> <!-- Закрытие контейнера формы -->
            </div> <!-- Закрытие обёртки опроса -->
        <!-- END: POLL --> <!-- Конец цикла опросов -->
        <!-- BEGIN: ERROR --> <!-- Начало блока ошибки -->
            <p class="small fw-bold text-center mb-3">{IPOLLS_ERROR}</p> <!-- Сообщение об ошибке, уменьшенный шрифт, жирный, центрирован -->
        <!-- END: ERROR --> <!-- Конец блока ошибки -->
        <p class="small text-center"> <!-- Контейнер для ссылки на архив -->
            <a href="{IPOLLS_ALL}">{PHP.L.polls_viewarchives}</a> <!-- Ссылка на архив опросов -->
        </p> <!-- Закрытие контейнера ссылки -->
    </div> <!-- Закрытие контейнера списка -->
    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для группы администраторов (ID 5) -->
        <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap для информирования админа -->
            <strong>{PHP.usr.name}</strong>, This is the HTML template <code>polls.index.tpl</code> <!-- Текст уведомления с именем админа и выделенным именем шаблона -->
        </div> <!-- Закрытие блока предупреждения -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
<!-- END: INDEXPOLLS --> <!-- Конец блока списка опросов -->