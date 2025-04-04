<!-- 
/********************************************************************************
 * File: polls.tpl
 * Extention: module 'polls'
 * Description: HTML template for a survey and voting module on the site.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 28 March 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->

<!-- BEGIN: POLL_VIEW --> <!-- Начало блока формы голосования для активного опроса -->
    <div id="poll_{POLL_ID}"> <!-- Контейнер опроса с уникальным ID, где {POLL_ID} — идентификатор опроса -->
        <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax"> <!-- Форма отправки голоса; {POLL_FORM_URL} — URL обработки, классы для AJAX -->
            <input type="hidden" name="poll_id" value="{POLL_ID}" /> <!-- Скрытое поле с ID опроса для передачи на сервер -->
            <div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами между элементами (gap-3) -->
                <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа в опросе -->
                    <div class="col-12"> <!-- Колонка Bootstrap, занимает всю ширину -->
                        <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер: столбец на мобильных, строка на десктопах -->
                            <div class="flex-grow-1"> <!-- Блок для выбора варианта, растягивается по ширине -->
                                <label class="d-block">{POLL_INPUT}<span class="ms-3">{POLL_OPTION}</span></label> <!-- Метка с элементом ввода и текстом варианта -->
                            </div> <!-- Закрытие блока выбора -->
                            <div class="progress flex-grow-1" style="max-width: 40%;" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100"> <!-- Bootstrap-прогресс-бар, ограничен 40% ширины -->
                                <div class="progress-bar" style="width:{POLL_PERCENT_FROM_TOTAL}%;"></div> <!-- Полоса прогресса с шириной из {POLL_PERCENT_FROM_TOTAL} -->
                            </div> <!-- Закрытие прогресс-бара -->
                            <div class="text-center" style="min-width: 10%;">{POLL_PERCENT_FROM_TOTAL}%</div> <!-- Процент голосов, минимум 10% ширины, центрирован -->
                            <div class="text-center" style="min-width: 10%;">{POLL_VOTES_COUNT}</div> <!-- Количество голосов, минимум 10% ширины, центрирован -->
                        </div> <!-- Закрытие flex-контейнера -->
                    </div> <!-- Закрытие колонки -->
                <!-- END: POLLTABLE --> <!-- Конец цикла вариантов ответа -->
                <div class="col-12"> <!-- Колонка для кнопки, занимает всю ширину -->
                    <button type="submit" class="btn btn-primary" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button> <!-- Кнопка отправки формы, стили Bootstrap -->
                </div> <!-- Закрытие колонки кнопки -->
            </div> <!-- Закрытие строки -->
            <p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p> <!-- Информация о количестве голосов и дате начала опроса -->
        </form> <!-- Закрытие формы голосования -->
    </div> <!-- Закрытие контейнера опроса -->
<!-- END: POLL_VIEW --> <!-- Конец блока формы голосования -->

<!-- BEGIN: POLL_VIEW_VOTED --> <!-- Начало блока результатов для уже проголосовавших -->
    <div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами -->
        <div class="col-12"> <!-- Колонка для статуса -->
		<!-- Уведомление о том, что пользователь уже проголосовал, зелёный текст -->
            <p class="fw-bold text-success">{PHP.L.polls_alreadyvoted}</p> 
        </div> <!-- Закрытие колонки статуса -->
        <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа -->
            <div class="col-12"> <!-- Колонка, занимает всю ширину -->
                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер для вариантов -->
                    <div class="flex-grow-1">{POLL_OPTION}</div> <!-- Текст варианта ответа, растягивается -->
                    <div class="progress flex-grow-1" style="max-width: 40%;" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100"> <!-- Bootstrap-прогресс-бар, ограничен 40% -->
                        <div class="progress-bar" style="width:{POLL_PERCENT_FROM_TOTAL}%;"></div> <!-- Полоса прогресса с шириной из {POLL_PERCENT_FROM_TOTAL} -->
                    </div> <!-- Закрытие прогресс-бара -->
                    <div class="text-center" style="min-width: 10%;">{POLL_PERCENT_FROM_TOTAL}%</div> <!-- Процент голосов, центрирован -->
                    <div class="text-center" style="min-width: 10%;">{POLL_VOTES_COUNT}</div> <!-- Количество голосов, центрирован -->
                </div> <!-- Закрытие flex-контейнера -->
            </div> <!-- Закрытие колонки -->
        <!-- END: POLLTABLE --> <!-- Конец цикла вариантов -->

    </div> <!-- Закрытие строки -->
    <p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p> <!-- Информация о голосах и дате -->
<!-- END: POLL_VIEW_VOTED --> <!-- Конец блока для проголосовавших -->

<!-- BEGIN: POLL_VIEW_LOCKED --> <!-- Начало блока для закрытого опроса -->
    <div class="row g-3"> <!-- Bootstrap-контейнер строки -->
        <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
            <div class="col-12"> <!-- Колонка на всю ширину -->
                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер -->
                    <div class="flex-grow-1">{POLL_OPTION}</div> <!-- Текст варианта, растягивается -->
                    <div class="progress flex-grow-1" style="max-width: 40%;" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100"> <!-- Bootstrap-прогресс-бар, ограничен 40% -->
                        <div class="progress-bar" style="width:{POLL_PERCENT_FROM_TOTAL}%;"></div> <!-- Полоса прогресса с шириной из {POLL_PERCENT_FROM_TOTAL} -->
                    </div> <!-- Закрытие прогресс-бара -->
                    <div class="text-center" style="min-width: 10%;">{POLL_PERCENT_FROM_TOTAL}%</div> <!-- Процент, центрирован -->
                    <div class="text-center" style="min-width: 10%;">{POLL_VOTES_COUNT}</div> <!-- Количество голосов, центрирован -->
                </div> <!-- Закрытие flex-контейнера -->
            </div> <!-- Закрытие колонки -->
        <!-- END: POLLTABLE --> <!-- Конец цикла -->
        <div class="col-12"> <!-- Колонка для статуса -->
            <p class="fw-bold text-warning">{PHP.L.polls_locked}</p> <!-- Уведомление о закрытии опроса, жёлтый текст -->
        </div> <!-- Закрытие колонки статуса -->
    </div> <!-- Закрытие строки -->
    <p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p> <!-- Информация о голосах и дате -->
<!-- END: POLL_VIEW_LOCKED --> <!-- Конец блока закрытого опроса -->

<!-- BEGIN: POLL_VIEW_DISABLED --> <!-- Начало блока для отключенного опроса -->
    <ul class="list-unstyled mb-0"> <!-- Список без маркеров и отступов -->
        <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
            <li class="mb-2">{POLL_OPTION}</li> <!-- Элемент списка с текстом варианта -->
        <!-- END: POLLTABLE --> <!-- Конец цикла -->
        <li class="text-muted small">{PHP.L.rat_registeredonly}</li> <!-- Уведомление о доступе только для зарегистрированных -->
    </ul> <!-- Закрытие списка -->
<!-- END: POLL_VIEW_DISABLED --> <!-- Конец блока отключенного опроса -->

<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->
    <!-- BEGIN: POLLS_VIEW --> <!-- Начало блока просмотра конкретного опроса -->
        <div class="bg-light py-2 border-bottom border-secondary"> <!-- Панель хлебных крошек -->
            <div class="container py-2"> <!-- Контейнер для хлебных крошек -->
                <nav aria-label="breadcrumb"> <!-- Навигация Bootstrap -->
                    <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек -->
                        <a href="{PHP|cot_url('polls')}">{PHP.L.polls_viewarchives}</a> <!-- Ссылка на главную страницу опросов -->
                    </ol> <!-- Закрытие списка хлебных крошек -->
                </nav> <!-- Закрытие навигации -->
            </div> <!-- Закрытие контейнера хлебных крошек -->
        </div> <!-- Закрытие панели хлебных крошек -->
        <div class="container-xl min-height-50vh py-5"> <!-- Основной контейнер с минимальной высотой и отступами -->
            <div class="card mb-4"> <!-- Карточка для опроса с отступом снизу -->
                <div class="card-header bg-info-subtle text-info-emphasis"> <!-- Заголовок карточки -->
                    <h2 class="h5 mb-0">{POLLS_TITLE}</h2> <!-- Заголовок опроса -->
                </div> <!-- Закрытие заголовка карточки -->
                <div class="card-body"> <!-- Тело карточки -->
                    {POLLS_FORM} <!-- Форма или результаты опроса -->
                </div> <!-- Закрытие тела карточки -->
            </div> <!-- Закрытие карточки -->
            <h3 class="h6">{PHP.L.comments_comments}: {POLLS_COMMENTS}</h3> <!-- Заголовок комментариев с количеством -->
            {POLLS_COMMENTS_DISPLAY} <!-- Отображение комментариев -->
        </div> <!-- Закрытие основного контейнера -->
    <!-- END: POLLS_VIEW --> <!-- Конец блока просмотра опроса -->

    <!-- BEGIN: POLLS_VIEWALL --> <!-- Начало блока архива опросов -->
        <div class="container-xl min-height-50vh py-4"> <!-- Контейнер для архива -->
            <div class="card"> <!-- Карточка архива -->
                <div class="card-header bg-info-subtle"> <!-- Заголовок карточки -->
                    <h2 class="h5">{PHP.L.polls_viewarchives}</h2> <!-- Заголовок архива -->
                </div> <!-- Закрытие заголовка карточки -->
                <div class="card-body"> <!-- Тело карточки -->
                    <div class="row g-3"> <!-- Bootstrap-строка для списка -->
                        <!-- BEGIN: POLL_ROW --> <!-- Начало цикла записей архива -->
                            <div class="col-12"> <!-- Колонка на всю ширину -->
                                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер -->
                                    <div class="text-muted small" style="min-width: 15%;">{POLL_DATE}</div> <!-- Дата опроса -->
                                    <div class="flex-grow-1"> <!-- Ссылка на опрос -->
                                        <a href="{POLL_HREF}">{POLL_TEXT}</a> <!-- Название опроса с ссылкой -->
                                    </div> <!-- Закрытие ссылки -->
                                    <div class="text-muted small" style="min-width: 10%;">{POLLS_COMMENTS}</div> <!-- Количество комментариев -->
                                </div> <!-- Закрытие flex-контейнера -->
                            </div> <!-- Закрытие колонки -->
                        <!-- END: POLL_ROW --> <!-- Конец цикла -->
                        <!-- BEGIN: POLL_NONE --> <!-- Начало блока, если опросов нет -->
                            <div class="col-12 text-center text-muted">{PHP.L.None}</div> <!-- Сообщение об отсутствии опросов -->
                        <!-- END: POLL_NONE --> <!-- Конец блока -->
                    </div> <!-- Закрытие строки -->
                </div> <!-- Закрытие тела карточки -->
            </div> <!-- Закрытие карточки архива -->
        </div> <!-- Закрытие контейнера архива -->
    <!-- END: POLLS_VIEWALL --> <!-- Конец блока архива -->

    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <!-- Подключение шаблона предупреждений -->

    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для группы администраторов (ID 5) -->
        <div class="container-xl py-5"> <!-- Контейнер для уведомления админа -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>polls.tpl</code> <!-- Текст уведомления с именем админа и названием шаблона -->
            </div> <!-- Закрытие блока предупреждения -->
        </div> <!-- Закрытие контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
<!-- END: MAIN --> <!-- Конец основного блока -->