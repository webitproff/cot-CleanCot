<!-- 
/********************************************************************************
 * File: pm.send.tpl
 * Extention: module 'pm'
 * Description: The `pm.send.tpl` template is used to display a form for sending a new private message in the Private Messages (PM) module.
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

    <div class="bg-light py-2 border-bottom border-secondary"> <!-- Панель хлебных крошек с серым фоном и синей границей -->
        <div class="container py-2"> <!-- Внутренний контейнер с отступами -->
            <nav aria-label="breadcrumb"> <!-- Навигационный элемент для хлебных крошек -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек с горизонтальной прокруткой -->
                    {PMSEND_TITLE} <!-- Заголовок страницы в виде хлебных крошек -->
                </ol> <!-- Закрытие списка хлебных крошек -->
            </nav> <!-- Закрытие навигационного элемента -->
        </div> <!-- Закрытие внутреннего контейнера -->
    </div> <!-- Закрытие панели хлебных крошек -->

    <div class="container-xl py-5 min-height-50vh"> <!-- Основной контейнер с отступами и минимальной высотой -->
        <div class="row g-4"> <!-- Сетка Bootstrap с отступами между колонками -->
            <div class="col-md-3"> <!-- Левая колонка (3/12 ширины на средних экранах и выше) -->
                <div class="card"> <!-- Карточка для навигации -->
                    <div class="card-body"> <!-- Тело карточки с содержимым -->
                        <ul class="list-group list-group-flush"> <!-- Список навигации без внутренних границ -->
                            <li class="list-group-item">{PMSEND_INBOX}</li> <!-- Ссылка на папку "Входящие" -->
                            <li class="list-group-item">{PMSEND_SENTBOX}</li> <!-- Ссылка на папку "Отправленные" -->
                            <li class="list-group-item">{PMSEND_SENDNEWPM}</li> <!-- Ссылка на создание нового сообщения -->
                        </ul> <!-- Закрытие списка навигации -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки навигации -->
            </div> <!-- Закрытие левой колонки -->

            <div class="col-md-9"> <!-- Правая колонка (9/12 ширины на средних экранах и выше) -->
                <div class="card"> <!-- Карточка для формы отправки -->
                    <div class="card-body"> <!-- Тело карточки с содержимым -->
                        <p class="small text-muted mb-4">{PHP.L.pmsend_subtitle}</p> <!-- Подзаголовок формы с уменьшенным текстом и отступом -->
                        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключение шаблона предупреждений из текущей темы -->

                        <form action="{PMSEND_FORM_SEND}" method="post" name="newmessage" id="mewmessage" class="needs-validation" novalidate> <!-- Форма отправки сообщения с валидацией -->
                            <div class="row g-3"> <!-- Сетка для полей формы с отступами -->
                                <!-- BEGIN: PMSEND_USERLIST --> <!-- Начало блока списка получателей -->
                                    <div class="col-12"> <!-- Полная ширина колонки -->
                                        <label for="toUser" class="form-label fw-semibold">{PHP.L.Recipients}:</label> <!-- Метка "Получатели" с жирным шрифтом -->
                                        <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                            {PMSEND_FORM_TOUSER} <!-- Поле ввода или выбора получателей -->
                                        </div> <!-- Закрытие группы ввода -->
                                        <small class="form-text text-muted">{PHP.L.pm_sendmessagetohint}</small> <!-- Подсказка для поля получателей -->
                                    </div> <!-- Закрытие колонки -->
                                <!-- END: PMSEND_USERLIST --> <!-- Конец блока списка получателей -->

                                <div class="col-12"> <!-- Полная ширина колонки -->
                                    <label for="pmTitle" class="form-label fw-semibold">{PHP.L.Subject}:</label> <!-- Метка "Тема" с жирным шрифтом -->
                                    <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                        {PMSEND_FORM_TITLE} <!-- Поле ввода темы сообщения -->
                                    </div> <!-- Закрытие группы ввода -->
                                </div> <!-- Закрытие колонки -->

                                <div class="col-12"> <!-- Полная ширина колонки -->
                                    <label for="pmText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label> <!-- Метка "Сообщение" (скрыта) -->
                                    <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                        {PMSEND_FORM_TEXT} <!-- Поле ввода текста сообщения -->
                                    </div> <!-- Закрытие группы ввода -->
                                </div> <!-- Закрытие колонки -->

                                <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен модуль pfs, но не files -->
                                    <div class="col-12"> <!-- Полная ширина колонки -->
                                        <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label> <!-- Метка "Файлы" с жирным шрифтом -->
                                        <div class="d-flex flex-wrap gap-2"> <!-- Контейнер для кнопок файлов с гибким расположением -->
                                            {PMSEND_FORM_PFS} <!-- Кнопка "Мои файлы" -->
                                            {PMSEND_FORM_SFS} <!-- Кнопка "Файловый архив сайта" -->
                                        </div> <!-- Закрытие контейнера кнопок -->
                                    </div> <!-- Закрытие колонки -->
                                <!-- ENDIF --> <!-- Конец условия для pfs -->

                                <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: активен модуль files, но не pfs -->
                                    <div class="col-12"> <!-- Полная ширина колонки -->
                                        <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label> <!-- Метка "Файлы" с жирным шрифтом -->
                                        <div class="d-flex flex-wrap gap-2"> <!-- Контейнер для кнопок файлов с гибким расположением -->
                                            {PMSEND_FORM_PFS} <!-- Кнопка "Мои файлы" -->
                                            {PMSEND_FORM_SFS} <!-- Кнопка "Файловый архив сайта" -->
                                        </div> <!-- Закрытие контейнера кнопок -->
                                    </div> <!-- Закрытие колонки -->
                                <!-- ENDIF --> <!-- Конец условия для files -->

                                <div class="col-12"> <!-- Полная ширина колонки -->
                                    <div class="form-check mb-3"> <!-- Чекбокс с нижним отступом -->
                                        {PMSEND_FORM_NOT_TO_SENTBOX} <!-- Чекбокс "Не сохранять в отправленных" -->
                                    </div> <!-- Закрытие чекбокса -->
                                </div> <!-- Закрытие колонки -->

                                <div class="col-12"> <!-- Полная ширина колонки -->
                                    <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Контейнер для кнопки с выравниванием вправо на средних экранах -->
                                        <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button> <!-- Кнопка отправки формы с текстом "Отправить" -->
                                    </div> <!-- Закрытие контейнера кнопки -->
                                </div> <!-- Закрытие колонки -->
                            </div> <!-- Закрытие сетки формы -->
                        </form> <!-- Закрытие формы отправки -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки формы -->
            </div> <!-- Закрытие правой колонки -->
        </div> <!-- Закрытие сетки -->
    </div> <!-- Закрытие основного контейнера -->

    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для группы администраторов (ID 5) -->
        <div class="container-xl py-5"> <!-- Контейнер для уведомления с отступами -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <!-- Текст уведомления -->
                <code>pm.send.tpl</code> <!-- Имя шаблона в формате кода -->
            </div> <!-- Закрытие блока предупреждения -->
        </div> <!-- Закрытие контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->

    <!-- BEGIN: AFTER_AJAX --> <!-- Начало блока после AJAX-контента -->
        </div> <!-- Закрывающий тег контейнера ajaxBlock -->
    <!-- END: AFTER_AJAX --> <!-- Конец блока после AJAX-контента -->

<!-- END: MAIN --> <!-- Конец основного блока шаблона -->