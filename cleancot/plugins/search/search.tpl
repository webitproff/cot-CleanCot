<!-- 
/********************************************************************************
 * File: search.tpl
 * Extention: plugin 'search'
 * Description: HTML template of the site search plugin in various sections. For example, these are publications in articles, news and on the forum. There is a possibility of filtering the search by various parameters.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 03 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work 
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->

<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->
    <div class="bg-light py-2 border-bottom border-secondary"> <!-- Панель хлебных крошек с фоном и границей -->
        <!-- Хлебные крошки в контейнере -->
        <div class="container-xl py-2"> <!-- Контейнер для хлебных крошек с отступами -->
            <nav aria-label="breadcrumb"> <!-- Навигация для доступности -->
                <!-- Список хлебных крошек с горизонтальной прокруткой -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{PLUGIN_BREADCRUMBS}</ol> <!-- Список с плейсхолдером хлебных крошек -->
            </nav> <!-- Закрывающий тег навигации -->
        </div> <!-- Закрывающий тег контейнера хлебных крошек -->
    </div> <!-- Закрывающий тег панели хлебных крошек -->

    <div class="container-xl min-height-50vh py-4"> <!-- Основной контейнер с минимальной высотой и отступами -->

            <ul class="nav nav-tabs search-areas" role="tablist"> <!-- Навигация вкладок поиска -->
                <li class="nav-item" role="presentation"> <!-- Элемент вкладки "Все" -->
                    <a href="{PHP.sq|cot_url('search','sq=$this')}" class="nav-link <!-- IF {PHP.tab} == '' -->active<!-- ENDIF -->" role="tab">{PHP.L.plu_tabs_all}</a> <!-- Ссылка на вкладку "Все" -->
                </li> <!-- Закрывающий тег элемента вкладки "Все" -->
                <li class="nav-item" role="presentation"> <!-- Элемент вкладки "Страницы" -->
                    <a href="{PHP.sq|cot_url('search','tab=pag&sq=$this')}" class="nav-link <!-- IF {PHP.tab} === 'pag' -->active<!-- ENDIF -->" role="tab">{PHP.L.Pages}</a> <!-- Ссылка на вкладку "Страницы" -->
                </li> <!-- Закрывающий тег элемента вкладки "Страницы" -->
                <!-- IF {PHP|cot_module_active('forums')} --> <!-- Условие: отображение вкладки форумов, если модуль активен -->
                    <li class="nav-item" role="presentation"> <!-- Элемент вкладки "Форумы" -->
                        <a href="{PHP.sq|cot_url('search','tab=frm&sq=$this')}" class="nav-link <!-- IF {PHP.tab} === 'frm' -->active<!-- ENDIF -->" role="tab">{PHP.L.Forums}</a> <!-- Ссылка на вкладку "Форумы" -->
                    </li> <!-- Закрывающий тег элемента вкладки "Форумы" -->
                <!-- ENDIF --> <!-- Конец условия активности модуля форумов -->
            </ul> <!-- Закрывающий тег навигации вкладок -->

            <form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" method="GET"> <!-- Форма поиска -->
                <!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' --> <!-- Условие: добавление скрытого поля, если не используется handy-пресет -->
                    <input type="hidden" name="e" value="search" /> <!-- Скрытое поле с идентификатором плагина -->
                <!-- ENDIF --> <!-- Конец условия пресета -->
                <!-- IF {PHP.tab} --> <!-- Условие: добавление скрытого поля для текущей вкладки -->
                    <input type="hidden" name="tab" value="{PHP.tab}" /> <!-- Скрытое поле с текущей вкладкой -->
                <!-- ENDIF --> <!-- Конец условия вкладки -->

                <div class="card my-4 bg-primary-subtle text-primary-emphasis"> <!-- Карточка формы с отступами и стилями -->
                    <div class="card-body"> <!-- Тело карточки -->
                        <div class="row g-3 align-items-center"> <!-- Сетка с выравниванием элементов -->
                            <div class="col-12 col-md-4 text-center text-md-start"> <!-- Колонка для кнопки и текста -->
                                <div class="row"> <!-- Внутренняя сетка -->
                                    <div class="col-6"> <!-- Колонка для кнопки -->
                                        <a href="#searchOptions" class="btn btn-warning btn-sm" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="searchOptions">{PHP.L.plu_search_options}</a> <!-- Кнопка раскрытия опций -->
                                    </div> <!-- Закрывающий тег колонки кнопки -->
                                    <div class="col-6">{PHP.L.plu_search_req}:</div> <!-- Колонка с текстом "Запрос" -->
                                </div> <!-- Закрывающий тег внутренней сетки -->
                            </div> <!-- Закрывающий тег колонки кнопки и текста -->
                            <div class="col-12 col-md-5 text-center">{PLUGIN_SEARCH_TEXT}</div> <!-- Колонка с полем ввода запроса -->
                            <div class="col-12 col-md-3 text-center"> <!-- Колонка для кнопки поиска -->
                                <input type="submit" value="{PHP.L.plu_search_key}" class="col-12 btn btn-success" /> <!-- Кнопка отправки формы -->
                            </div> <!-- Закрывающий тег колонки кнопки -->
                        </div> <!-- Закрывающий тег сетки -->
                    </div> <!-- Закрывающий тег тела карточки -->
                </div> <!-- Закрывающий тег карточки формы -->

                <div class="collapse" id="searchOptions"> <!-- Сворачиваемый блок опций поиска -->
                    <p class="margin10 text-center">{PHP.L.plu_other_date}: {PLUGIN_SEARCH_DATE_SELECT} {PLUGIN_SEARCH_DATE_FROM} - {PLUGIN_SEARCH_DATE_TO}</p> <!-- Фильтр по дате -->
                    <p class="margin10 text-center">{PHP.L.plu_other_userfilter}: {PLUGIN_SEARCH_USER}</p> <!-- Фильтр по пользователю -->

                    <!-- BEGIN: PAGES_OPTIONS --> <!-- Начало блока опций поиска по страницам -->
                        <h3>{PHP.L.Pages}</h3> <!-- Заголовок секции страниц -->
                        <div class="card mb-4"> <!-- Карточка опций страниц -->
                            <div class="card-body"> <!-- Тело карточки -->
                                <div class="row g-3"> <!-- Сетка с отступами -->
                                    <div class="col-12 col-md-6"> <!-- Левая колонка опций -->
                                        <p class="fw-bold">{PHP.L.plu_pag_set_sec}:</p> <!-- Заголовок выбора секций -->
                                        <div>{PLUGIN_PAGE_SEC_LIST}</div> <!-- Список секций -->
                                        <div>{PLUGIN_PAGE_SEARCH_SUBCAT}</div> <!-- Фильтр по подразделам -->
                                        <p class="small">{PHP.L.plu_ctrl_list}</p> <!-- Подсказка для множественного выбора -->
                                    </div> <!-- Закрывающий тег левой колонки -->
                                    <div class="col-12 col-md-6"> <!-- Правая колонка опций -->
                                        <p class="fw-bold">{PHP.L.plu_other_opt}:</p> <!-- Заголовок дополнительных опций -->
                                        <div> <!-- Контейнер для опции -->
                                            <label class="d-block">{PLUGIN_PAGE_SEARCH_NAMES} {PHP.L.plu_pag_search_names}</label> <!-- Поиск по названиям -->
                                        </div> <!-- Закрывающий тег контейнера -->
                                        <div>{PLUGIN_PAGE_SEARCH_DESC}</div> <!-- Поиск по описанию -->
                                        <div>{PLUGIN_PAGE_SEARCH_TEXT}</div> <!-- Поиск по тексту -->
                                        <div>{PLUGIN_PAGE_SEARCH_FILE}</div> <!-- Поиск по файлам -->
                                        <p class="fw-bold">{PHP.L.plu_res_sort}:</p> <!-- Заголовок сортировки -->
                                        <div>{PLUGIN_PAGE_RES_SORT}</div> <!-- Поле сортировки -->
                                        <div>{PLUGIN_PAGE_RES_SORT_WAY}</div> <!-- Направление сортировки -->
                                    </div> <!-- Закрывающий тег правой колонки -->
                                </div> <!-- Закрывающий тег сетки -->
                            </div> <!-- Закрывающий тег тела карточки -->
                        </div> <!-- Закрывающий тег карточки -->
                    <!-- END: PAGES_OPTIONS --> <!-- Конец блока опций страниц -->

                    <!-- BEGIN: FORUMS_OPTIONS --> <!-- Начало блока опций поиска по форумам -->
                        <h3>{PHP.L.Forums}</h3> <!-- Заголовок секции форумов -->
                        <div class="card mb-4"> <!-- Карточка опций форумов -->
                            <div class="card-body"> <!-- Тело карточки -->
                                <div class="row g-3"> <!-- Сетка с отступами -->
                                    <div class="col-12 col-md-6"> <!-- Левая колонка опций -->
                                        <p class="fw-bold">{PHP.L.plu_frm_set_sec}:</p> <!-- Заголовок выбора секций -->
                                        <div>{PLUGIN_FORUM_SEC_LIST}</div> <!-- Список секций форумов -->
                                        <div>{PLUGIN_FORUM_SEARCH_SUBCAT}</div> <!-- Фильтр по подразделам -->
                                        <div class="small">{PHP.L.plu_ctrl_list}</div> <!-- Подсказка для множественного выбора -->
                                    </div> <!-- Закрывающий тег левой колонки -->
                                    <div class="col-12 col-md-6"> <!-- Правая колонка опций -->
                                        <p class="fw-bold">{PHP.L.plu_other_opt}:</p> <!-- Заголовок дополнительных опций -->
                                        <div>{PLUGIN_FORUM_SEARCH_NAMES}</div> <!-- Поиск по названиям -->
                                        <div>{PLUGIN_FORUM_SEARCH_POST}</div> <!-- Поиск по постам -->
                                        <div>{PLUGIN_FORUM_SEARCH_ANSW}</div> <!-- Поиск по ответам -->
                                        <p class="fw-bold">{PHP.L.plu_res_sort}:</p> <!-- Заголовок сортировки -->
                                        <div>{PLUGIN_FORUM_RES_SORT}</div> <!-- Поле сортировки -->
                                        <div>{PLUGIN_FORUM_RES_SORT_WAY}</div> <!-- Направление сортировки -->
                                    </div> <!-- Закрывающий тег правой колонки -->
                                </div> <!-- Закрывающий тег сетки -->
                            </div> <!-- Закрывающий тег тела карточки -->
                        </div> <!-- Закрывающий тег карточки -->
                    <!-- END: FORUMS_OPTIONS --> <!-- Конец блока опций форумов -->
                </div> <!-- Закрывающий тег сворачиваемого блока -->
            </form> <!-- Закрывающий тег формы поиска -->


        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключение шаблона предупреждений -->

        <!-- BEGIN: RESULTS --> <!-- Начало блока результатов поиска -->
            <!-- BEGIN: PAGES --> <!-- Начало блока результатов по страницам -->
                <h3>{PHP.L.Pages}</h3> <!-- Заголовок секции страниц -->
                <p>{PHP.L.plu_result}: {PHP.L.plu_tabs_pag}</p> <!-- Информация о результатах -->
                <div class="list-group list-group-striped list-group-flush mb-4"> <!-- Список результатов -->
                    <!-- BEGIN: ITEM --> <!-- Начало цикла вывода элементов -->
                        <div class="list-group-item list-group-item-action {PLUGIN_PR_ODDEVEN}"> <!-- Элемент списка с чередованием -->
                            <div>{PLUGIN_PR_LINK}</div> <!-- Ссылка на страницу -->
                            <div>{PLUGIN_PR_TEXT}</div> <!-- Текст результата -->
                            <div class="row g-2"> <!-- Сетка для метаданных -->
                                <div class="col-12 col-md-6"> <!-- Левая колонка метаданных -->
                                    <p class="small">{PHP.L.plu_last_date}: {PLUGIN_PR_TIME}</p> <!-- Дата последнего изменения -->
                                </div> <!-- Закрывающий тег левой колонки -->
                                <div class="col-12 col-md-6 text-md-end"> <!-- Правая колонка метаданных -->
                                    <p class="small">{PHP.L.plu_section}: {PLUGIN_PR_CATEGORY}</p> <!-- Категория страницы -->
                                </div> <!-- Закрывающий тег правой колонки -->
                            </div> <!-- Закрывающий тег сетки метаданных -->
                        </div> <!-- Закрывающий тег элемента списка -->
                    <!-- END: ITEM --> <!-- Конец цикла элементов -->
                </div> <!-- Закрывающий тег списка -->
            <!-- END: PAGES --> <!-- Конец блока страниц -->

            <!-- BEGIN: FORUMS --> <!-- Начало блока результатов по форумам -->
                <h3>{PHP.L.Forums}</h3> <!-- Заголовок секции форумов -->
                <p>{PHP.L.plu_result}: {PHP.L.plu_tabs_frm}</p> <!-- Информация о результатах -->
                <div class="list-group list-group-striped list-group-flush mb-4"> <!-- Список результатов -->
                    <!-- BEGIN: ITEM --> <!-- Начало цикла вывода элементов -->
                        <div class="list-group-item list-group-item-action {PLUGIN_FR_ODDEVEN}"> <!-- Элемент списка с чередованием -->
                            <div>{PLUGIN_FR_LINK}</div> <!-- Ссылка на пост форума -->
                            <!-- IF {PLUGIN_FR_TEXT} --> <!-- Условие: отображение текста, если он есть -->
                                <div>{PLUGIN_FR_TEXT}</div> <!-- Текст результата -->
                            <!-- ENDIF --> <!-- Конец условия текста -->
                            <div class="row g-2"> <!-- Сетка для метаданных -->
                                <div class="col-12 col-md-6"> <!-- Левая колонка метаданных -->
                                    <p class="small">{PHP.L.plu_last_date}: {PLUGIN_FR_TIME}</p> <!-- Дата последнего изменения -->
                                </div> <!-- Закрывающий тег левой колонки -->
                                <div class="col-12 col-md-6 text-md-end"> <!-- Правая колонка метаданных -->
                                    <p class="small">{PHP.L.plu_section}: {PLUGIN_FR_CATEGORY}</p> <!-- Категория форума -->
                                </div> <!-- Закрывающий тег правой колонки -->
                            </div> <!-- Закрывающий тег сетки метаданных -->
                        </div> <!-- Закрывающий тег элемента списка -->
                    <!-- END: ITEM --> <!-- Конец цикла элементов -->
                </div> <!-- Закрывающий тег списка -->
            <!-- END: FORUMS --> <!-- Конец блока форумов -->
        <!-- END: RESULTS --> <!-- Конец блока результатов -->

        <!-- IF {PAGINATION} --> <!-- Условие: отображение пагинации -->
            <nav aria-label="pagination"> <!-- Навигация пагинации -->
                <ul class="pagination mb-0"> <!-- Список пагинации без нижнего отступа -->
                    {PREVIOUS_PAGE} <!-- Ссылка на предыдущую страницу -->
                    {PAGINATION} <!-- Основная пагинация -->
                    {NEXT_PAGE} <!-- Ссылка на следующую страницу -->
                </ul> <!-- Закрывающий тег списка пагинации -->
            </nav> <!-- Закрывающий тег навигации -->
        <!-- ENDIF --> <!-- Конец условия пагинации -->
    </div> <!-- Закрывающий тег основного контейнера -->

    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для администраторов (ID 5) -->
        <div class="container-xl"> <!-- Контейнер для уведомления -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>search.tpl</code> <!-- Текст уведомления -->
            </div> <!-- Закрывающий тег блока предупреждения -->
        </div> <!-- Закрывающий тег контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
	
<!-- END: MAIN --> <!-- Конец основного блока шаблона -->