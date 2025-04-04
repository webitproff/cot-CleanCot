<!-- 
/********************************************************************************
 * File: tags.tpl
 * Extention: plugin 'tags'
 * Description: HTML template for displaying a tag search interface, tag cloud, and search results with pagination and filtering options.
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
    <div class="bg-light py-2 border-bottom border-secondary"> <!-- Панель хлебных крошек с серым фоном и границей -->
        <div class="container-xl py-2"> <!-- Внутренний контейнер с максимальной шириной и отступами -->
            <nav aria-label="breadcrumb"> <!-- Навигационный элемент для хлебных крошек -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек с горизонтальной прокруткой -->
                    {TAGS_BREADCRUMBS}  <!-- Заголовок страницы в виде хлебных крошек -->
                </ol> <!-- Закрытие списка хлебных крошек -->
            </nav> <!-- Закрытие навигационного элемента -->
        </div> <!-- Закрытие внутреннего контейнера -->
    </div> <!-- Закрытие панели хлебных крошек -->
    <div class="container-xl d-flex flex-column justify-content-center pb-5"> <!-- Основной контейнер с центрированием и нижним отступом -->
        <div class="row"> <!-- Сетка Bootstrap для двухколоночной структуры -->
		
            <div class="col-12 col-md-8 mx-auto"> <!-- Основная колонка, 8/12 ширины на средних экранах -->
			
                <div class="card mt-4 mb-4"> <!-- Карточка с отступами сверху и снизу -->
                    <div class="card-header bg-costum-dblue text-white"> <!-- Заголовок карточки с желтым фоном -->
                        <h2 class="h5 mb-0">{TAGS_TITLE}</h2> <!-- Заголовок страницы тегов -->
                    </div> <!-- Закрывающий тег заголовка карточки -->
                    <div class="card-body"> <!-- Тело карточки -->
                        <form id="tags-search-form" action="{TAGS_FORM_ACTION}" method="GET" class="mb-3"> <!-- Форма поиска тегов -->
                            {TAGS_FORM_PARAMS} <!-- Скрытые параметры формы -->
                            <div class="input-group"> <!-- Группа ввода Bootstrap -->
                                <input type="text" name="t" value="{TAGS_QUERY}" class="form-control" placeholder="{PHP.L.Search}" /> <!-- Поле ввода запроса -->
                                <button type="submit" class="btn btn-primary">{PHP.L.Search}</button> <!-- Кнопка отправки формы -->
                            </div> <!-- Закрывающий тег группы ввода -->
                            <div class="mt-2">{TAGS_FORM_ORDER}</div> <!-- Поле сортировки с отступом -->
                        </form> <!-- Закрывающий тег формы поиска -->

                        <!-- IF {PHP|count({PHP.tagAreas})} > 1 --> <!-- Условие: отображение фильтров, если областей тегов больше одной -->
                            <p class="mb-3"> <!-- Абзац с нижним отступом -->
                                <a href="{PHP.urlParams.t|cot_url('tags', 't=$this')}"<!-- IF {PHP.area} === 'all' --> class="active btn btn-outline-primary mx-2"<!-- ENDIF -->>{PHP.L.tags_All}</a> <!-- Ссылка на все теги -->
                                <!-- FOR {AREA}, {TITLE} IN {PHP.tagAreas} --> <!-- Цикл по областям тегов -->
                                     <a href="{PHP.urlParams.t|cot_url('tags','a={AREA}&t=$this')}"<!-- IF {PHP.area} === {AREA} --> class="active btn btn-outline-primary mx-2"<!-- ENDIF -->>{PHP|htmlspecialchars({TITLE})}</a> <!-- Ссылка на область тегов -->
                                <!-- ENDFOR --> <!-- Конец цикла областей -->
                            </p> <!-- Закрывающий тег абзаца -->
                        <!-- ENDIF --> <!-- Конец условия фильтров -->

                        <!-- BEGIN: TAGS_CLOUD --> <!-- Начало блока облака тегов -->
                            <h3 class="border-bottom pb-2 text-primary mb-3">{PHP.L.tags_All}</h3> <!-- Заголовок облака тегов -->
                            <div class="mb-3">{TAGS_CLOUD_BODY}</div> <!-- Контейнер облака тегов -->
                        <!-- END: TAGS_CLOUD --> <!-- Конец блока облака тегов -->

                        <!-- BEGIN: TAGS_RESULT --> <!-- Начало блока результатов поиска -->
                            <div class="p-3 mb-2 <!-- IF {TAGS_RESULT_ROW_ITEM_TYPE} == 'page' -->bg-info text-dark <!-- ELSE--> bg-primary-subtle text-primary-emphasis <!-- ENDIF -->border-bottom">{TAGS_RESULT_TITLE}</div> <!-- Заголовок результатов -->
                            <div class="list-group list-group-striped list-group-flush">
                                <!-- BEGIN: TAGS_RESULT_ROW --> <!-- Начало цикла вывода результатов -->
                                    <li class="list-group-item list-group-item-action">

                                        <a class="fw-semibold text-primary-emphasis text-decoration-none" href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a><br/> <!-- Заголовок результата со ссылкой -->
                                        <span class="small text-muted">{PHP.L.Sections}: {TAGS_RESULT_ROW_PATH}<br/> <!-- Путь категории -->
                                        {PHP.L.Tags}: {TAGS_RESULT_ROW_TAGS}</span> <!-- Список тегов -->
                                        <!-- IF {TAGS_RESULT_ROW_PREVIEW} --> <!-- Условие: отображение превью -->
                                            <p class="mt-1">{TAGS_RESULT_ROW_PREVIEW|strip_tags($this)|mb_substr($this, 0, 120, 'UTF-8')} ...</p> <!-- Превью результата -->
                                        <!-- ENDIF --> <!-- Конец условия превью -->
                                    </li> <!-- Закрывающий тег элемента списка -->
                                <!-- END: TAGS_RESULT_ROW --> <!-- Конец цикла результатов -->
                            </div> <!-- Закрывающий тег списка -->
                            <!-- BEGIN: TAGS_RESULT_NONE --> <!-- Начало блока для пустых результатов -->
                                <div class="alert alert-warning" role="alert"> <!-- Уведомление об отсутствии результатов -->
                                    {PHP.L.Noitemsfound} <!-- Текст "Ничего не найдено" -->
                                </div> <!-- Закрывающий тег уведомления -->
                            <!-- END: TAGS_RESULT_NONE --> <!-- Конец блока пустых результатов -->
                        <!-- END: TAGS_RESULT --> <!-- Конец блока результатов поиска -->

                        <!-- IF {PAGINATION} --> <!-- Условие: отображение пагинации -->
                            <nav aria-label="Pagination" class="mt-3"> <!-- Навигация пагинации -->
                                <ul class="pagination justify-content-center"> <!-- Список пагинации с центрированием -->
                                    {PREVIOUS_PAGE} <!-- Ссылка на предыдущую страницу -->
                                    {PAGINATION} <!-- Основная пагинация -->
                                    {NEXT_PAGE} <!-- Ссылка на следующую страницу -->
                                </ul> <!-- Закрывающий тег списка пагинации -->
                            </nav> <!-- Закрывающий тег навигации -->
                        <!-- ENDIF --> <!-- Конец условия пагинации -->
						
                    </div> <!-- Закрывающий тег тела карточки -->
                </div> <!-- Закрывающий тег карточки -->
				
            </div> <!-- Закрывающий тег основной колонки -->

            <!-- Боковая панель -->
            <div class="col-12 col-md-4 mx-auto"> <!-- Боковая колонка, 4/12 ширины на средних экранах -->
			
                <div class="card mt-4 mb-4"> <!-- Карточка боковой панели -->
                    <div class="card-header bg-warning text-dark"> <!-- Заголовок боковой панели -->
                        <h2 class="h5 mb-0">{PHP.L.Tags}</h2> <!-- Заголовок "Теги" -->
                    </div> <!-- Закрывающий тег заголовка -->
                    <div class="card-body"> <!-- Тело боковой панели -->
                        {TAGS_HINT} <!-- Подсказка или дополнительная информация -->
                    </div> <!-- Закрывающий тег тела -->
                </div> <!-- Закрывающий тег карточки боковой панели -->
				
            </div> <!-- Закрывающий тег боковой колонки -->
			
        </div> <!-- Закрывающий тег сетки -->
		
    </div> <!-- Закрывающий тег основного контейнера -->

    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для администраторов (ID 5) -->
        <div class="container-xl py-2"> <!-- Контейнер для уведомления с отступами -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>tags.tpl</code> <!-- Текст уведомления -->
            </div> <!-- Закрывающий тег блока предупреждения -->
        </div> <!-- Закрывающий тег контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
<!-- END: MAIN --> <!-- Конец основного блока шаблона -->