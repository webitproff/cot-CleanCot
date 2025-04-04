<!-- 
/********************************************************************************
 * File: pm.message.tpl
 * Extention: module 'pm'
 * Description: The `pm.message.tpl` template is used to display a single private message with reply form and message history in the Private Messages (PM) module.
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

<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона, определяет главный контент -->

    <!-- BEGIN: BEFORE_AJAX --> <!-- Начало блока перед AJAX-контентом -->
        <div id="ajaxBlock"> <!-- Контейнер для динамического содержимого, обновляемого через AJAX -->
    <!-- END: BEFORE_AJAX --> <!-- Конец блока перед AJAX-контентом -->

    <div class="bg-light py-2 border-bottom border-secondary"> <!-- Панель хлебных крошек с серым фоном и границей -->
        <div class="container-xl py-2"> <!-- Внутренний контейнер с максимальной шириной и отступами -->
            <nav aria-label="breadcrumb"> <!-- Навигационный элемент для хлебных крошек -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек с горизонтальной прокруткой -->
                    {PM_PAGETITLE} <!-- Заголовок страницы в виде хлебных крошек -->
                </ol> <!-- Закрытие списка хлебных крошек -->
            </nav> <!-- Закрытие навигационного элемента -->
        </div> <!-- Закрытие внутреннего контейнера -->
    </div> <!-- Закрытие панели хлебных крошек -->

    <div class="container-xl py-5 min-height-50vh"> <!-- Основной контейнер с отступами и минимальной высотой -->
        <div class="row g-4"> <!-- Сетка Bootstrap с отступами между колонками -->
            <div class="col-md-4"> <!-- Левая колонка (4/12 ширины на средних экранах и выше) -->
                <div class="card"> <!-- Карточка для навигации -->
                    <div class="card-body"> <!-- Тело карточки с содержимым -->
                        <ul class="list-group list-group-flush"> <!-- Список навигации без внутренних границ -->
                            <li class="list-group-item">{PM_INBOX}</li> <!-- Ссылка на папку "Входящие" -->
                            <li class="list-group-item">{PM_SENTBOX}</li> <!-- Ссылка на папку "Отправленные" -->
                            <li class="list-group-item">{PM_SENDNEWPM}</li> <!-- Ссылка на создание нового сообщения -->
                        </ul> <!-- Закрытие списка навигации -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки навигации -->
            </div> <!-- Закрытие левой колонки -->

            <div class="col-md-8"> <!-- Правая колонка (8/12 ширины на средних экранах и выше) -->
                <div class="card mb-3"> <!-- Карточка для отображения сообщения с нижним отступом -->
                    <div class="card-body"> <!-- Тело карточки с содержимым -->
                        <p class="small text-muted mb-4">{PM_SUBTITLE}</p> <!-- Подзаголовок сообщения с уменьшенным текстом и отступом -->

                        <div class="row g-2"> <!-- Сетка для информации о сообщении с небольшими отступами -->
                            <div class="col-12"> <!-- Полная ширина колонки -->
                                <span class="fw-semibold">{PHP.L.Subject}:</span> <!-- Метка "Тема" с жирным шрифтом -->
                                <span class="ms-2">{PM_TITLE}</span> <!-- Значение темы сообщения с отступом слева -->
                            </div> <!-- Закрытие колонки -->
                            <div class="col-12"> <!-- Полная ширина колонки -->
                                <span class="fw-semibold">{PM_SENT_TYPE}:</span> <!-- Метка "Отправитель/Получатель" с жирным шрифтом -->
                                <span class="ms-2">{PM_USER_NAME}</span> <!-- Имя пользователя с отступом слева -->
                            </div> <!-- Закрытие колонки -->
                            <div class="col-12"> <!-- Полная ширина колонки -->
                                <span class="fw-semibold">{PHP.L.Date}:</span> <!-- Метка "Дата" с жирным шрифтом -->
                                <span class="ms-2">{PM_DATE}</span> <!-- Значение даты с отступом слева -->
                            </div> <!-- Закрытие колонки -->
                            <div class="col-12"> <!-- Полная ширина колонки -->
                                <span class="fw-semibold">{PHP.L.Message}:</span> <!-- Метка "Сообщение" с жирным шрифтом -->
                                <div class="mt-2">{PM_TEXT}</div> <!-- Текст сообщения с верхним отступом -->
                            </div> <!-- Закрытие колонки -->
                            <div class="col-12"> <!-- Полная ширина колонки -->
                                <span class="fw-semibold">{PHP.L.Action}:</span> <!-- Метка "Действия" с жирным шрифтом -->
                                <div class="d-flex flex-wrap gap-2 mt-2"> <!-- Контейнер для кнопок действий с гибким расположением -->
                                    {PM_QUOTE} {PM_EDIT} {PM_DELETE} {PM_HISTORY} <!-- Кнопки цитирования, редактирования, удаления и истории -->
                                </div> <!-- Закрытие контейнера кнопок -->
                            </div> <!-- Закрытие колонки -->
                        </div> <!-- Закрытие сетки информации -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки сообщения -->

                <!-- BEGIN: REPLY --> <!-- Начало блока формы ответа -->
                    <div class="card mb-3"> <!-- Карточка для формы ответа с нижним отступом -->
                        <div class="card-body"> <!-- Тело карточки с содержимым -->
                            <h3 class="mt-4 mb-3">{PHP.L.pm_replyto}</h3> <!-- Заголовок "Ответить" с отступами -->
                            <form action="{PM_FORM_SEND}" method="post" name="newlink" class="needs-validation" novalidate> <!-- Форма отправки ответа с валидацией -->
                                <div class="row g-2"> <!-- Сетка для полей формы с небольшими отступами -->
                                    <div class="col-12"> <!-- Полная ширина колонки -->
                                        <label for="pmTitle" class="form-label fw-semibold">{PHP.L.Subject}:</label> <!-- Метка "Тема" с жирным шрифтом -->
                                        <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                            {PM_FORM_TITLE} <!-- Поле ввода темы -->
                                        </div> <!-- Закрытие группы ввода -->
                                    </div> <!-- Закрытие колонки -->
                                    <div class="col-12"> <!-- Полная ширина колонки -->
                                        <label for="pmText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label> <!-- Метка "Сообщение" (скрыта) -->
                                        <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                            {PM_FORM_TEXT} <!-- Поле ввода текста сообщения -->
                                        </div> <!-- Закрытие группы ввода -->
                                    </div> <!-- Закрытие колонки -->
                                    <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: активен модуль files, но не pfs -->
                                        <div class="col-12"> <!-- Полная ширина колонки -->
                                            <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label> <!-- Метка "Файлы" с жирным шрифтом -->
                                            <div class="d-flex flex-wrap gap-2"> <!-- Контейнер для кнопок файлов с гибким расположением -->
                                                {PM_FORM_PFS} <!-- Кнопка "Мои файлы" -->
                                                {PM_FORM_SFS} <!-- Кнопка "Файловый архив сайта" -->
                                            </div> <!-- Закрытие контейнера кнопок -->
                                        </div> <!-- Закрытие колонки -->
                                    <!-- ENDIF --> <!-- Конец условия для files -->
                                    <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен модуль pfs, но не files -->
                                        <div class="col-12"> <!-- Полная ширина колонки -->
                                            <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label> <!-- Метка "Файлы" с жирным шрифтом -->
                                            <div class="d-flex flex-wrap gap-2"> <!-- Контейнер для кнопок файлов с гибким расположением -->
                                                {PM_FORM_PFS} <!-- Кнопка "Мои файлы" -->
                                                {PM_FORM_SFS} <!-- Кнопка "Файловый архив сайта" -->
                                            </div> <!-- Закрытие контейнера кнопок -->
                                        </div> <!-- Закрытие колонки -->
                                    <!-- ENDIF --> <!-- Конец условия для pfs -->
                                    <div class="col-12"> <!-- Полная ширина колонки -->
                                        <div class="form-check mb-3"> <!-- Чекбокс с нижним отступом -->
                                            {PM_FORM_NOT_TO_SENTBOX} <!-- Чекбокс "Не сохранять в отправленных" -->
                                        </div> <!-- Закрытие чекбокса -->
                                    </div> <!-- Закрытие колонки -->
                                    <div class="col-12"> <!-- Полная ширина колонки -->
                                        <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Контейнер для кнопки с выравниванием вправо на средних экранах -->
                                            <button type="submit" class="btn btn-primary">{PHP.L.Reply}</button> <!-- Кнопка отправки формы с текстом "Ответить" -->
                                        </div> <!-- Закрытие контейнера кнопки -->
                                    </div> <!-- Закрытие колонки -->
                                </div> <!-- Закрытие сетки формы -->
                            </form> <!-- Закрытие формы ответа -->
                        </div> <!-- Закрытие тела карточки -->
                    </div> <!-- Закрытие карточки формы -->
                <!-- END: REPLY --> <!-- Конец блока формы ответа -->

                <div id="ajaxHistory"> <!-- Контейнер для истории сообщений, обновляемый через AJAX -->
                    <!-- BEGIN: HISTORY --> <!-- Начало блока истории сообщений -->
                        <div class="card mb-3"> <!-- Карточка для истории с нижним отступом -->
                            <div class="card-body"> <!-- Тело карточки с содержимым -->
                                <h3 class="mt-4 mb-3">{PHP.L.pm_messagehistory}</h3> <!-- Заголовок "История сообщений" с отступами -->
                                <div class="list-group"> <!-- Список элементов истории -->
                                    <!-- BEGIN: PM_ROW --> <!-- Начало цикла элементов истории -->
                                        <div class="list-group-item d-flex flex-column flex-md-row {PM_ROW_ODDEVEN}"> <!-- Элемент списка с гибким расположением и чередованием стилей -->
                                            <div class="col-md-3 mb-2 mb-md-0"> <!-- Левая колонка (3/12 ширины на средних экранах) -->
                                                <p class="fw-semibold mb-1">{PM_ROW_USER_NAME}</p> <!-- Имя пользователя с жирным шрифтом и отступом -->
                                                <p class="small text-muted mb-0">{PM_ROW_DATE}</p> <!-- Дата сообщения с уменьшенным текстом -->
                                            </div> <!-- Закрытие левой колонки -->
                                            <div class="col-md-9">{PM_ROW_TEXT}</div> <!-- Правая колонка с текстом сообщения (9/12 ширины) -->
                                        </div> <!-- Закрытие элемента списка -->
                                    <!-- END: PM_ROW --> <!-- Конец цикла элементов истории -->
                                    <!-- BEGIN: PM_ROW_EMPTY --> <!-- Начало блока для пустой истории -->
                                        <div class="list-group-item text-center py-4"> <!-- Элемент списка с центрированным текстом и отступами -->
                                            {PHP.L.None} <!-- Сообщение "Ничего нет" -->
                                        </div> <!-- Закрытие элемента списка -->
                                    <!-- END: PM_ROW_EMPTY --> <!-- Конец блока для пустой истории -->
                                </div> <!-- Закрытие списка истории -->
                                <!-- IF {PAGINATION} --> <!-- Условие: отображение пагинации, если есть страницы -->
                                    <nav class="mt-3" aria-label="Pagination"> <!-- Навигация пагинации с верхним отступом -->
                                        <ul class="pagination justify-content-center"> <!-- Список пагинации с центрированием -->
                                            {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE} <!-- Ссылки на предыдущую страницу, пагинацию и следующую страницу -->
                                        </ul> <!-- Закрытие списка пагинации -->
                                    </nav> <!-- Закрытие навигации пагинации -->
                                <!-- ENDIF --> <!-- Конец условия пагинации -->
                            </div> <!-- Закрытие тела карточки -->
                        </div> <!-- Закрытие карточки истории -->
                    <!-- END: HISTORY --> <!-- Конец блока истории сообщений -->
                </div> <!-- Закрытие контейнера истории -->
            </div> <!-- Закрытие правой колонки -->
        </div> <!-- Закрытие сетки -->
    </div> <!-- Закрытие основного контейнера -->

    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для группы администраторов (ID 5) -->
        <div class="container-xl py-5"> <!-- Контейнер для уведомления с отступами -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <!-- Текст уведомления -->
                <code>pm.message.tpl</code> <!-- Имя шаблона в формате кода -->
            </div> <!-- Закрытие блока предупреждения -->
        </div> <!-- Закрытие контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->

    <!-- BEGIN: AFTER_AJAX --> <!-- Начало блока после AJAX-контента -->
        </div> <!-- Закрывающий тег контейнера ajaxBlock -->
    <!-- END: AFTER_AJAX --> <!-- Конец блока после AJAX-контента -->

<!-- END: MAIN --> <!-- Конец основного блока шаблона -->