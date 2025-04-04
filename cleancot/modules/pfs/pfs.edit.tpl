<!-- 
/********************************************************************************
 * File: pfs.edit.tpl
 * Extention: module 'pfs'
 * Description: The `pfs.edit.tpl` template is used to display and edit file properties in the Personal File Storage (PFS) module.
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
    <!-- BEGIN: STANDALONE_HEADER --> <!-- Начало блока заголовка для автономного режима -->
        <!DOCTYPE html> <!-- Объявление типа документа HTML5 -->
        <html lang="{PHP.cfg.defaultlang}"> <!-- Открытие тега HTML с языком по умолчанию из конфигурации -->
            <head> <!-- Начало секции head для мета-данных и подключений -->
                <title>{PHP.L.pfs_title} - {PHP.cfg.maintitle}</title> <!-- Установка заголовка страницы: "PFS" + название сайта -->
                <meta charset="utf-8" /> <!-- Указание кодировки UTF-8 -->
                <meta name="viewport" content="width=device-width, initial-scale=1" /> <!-- Настройка viewport для адаптивности -->
                <base href="{PHP.cfg.mainurl}/" /> <!-- Установка базового URL для относительных ссылок -->
                {PFS_HEAD} <!-- Вставка дополнительных данных заголовка из PFS (скрипты, стили и т.д.) -->
                <link href="{PHP.cfg.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" /> <!-- Подключение CSS-файла темы -->
            </head> <!-- Закрытие секции head -->
            <body> <!-- Начало секции body, где размещается видимый контент -->
    <!-- END: STANDALONE_HEADER --> <!-- Конец блока заголовка для автономного режима -->

    <div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер для хлебных крошек с фоном и синей границей -->
        <div class="container-xl py-2"> <!-- Внутренний контейнер с максимальной шириной и отступами -->
            <nav aria-label="breadcrumb"> <!-- Навигационный элемент для хлебных крошек -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{PFS_BREADCRUMBS}</ol> <!-- Список хлебных крошек с горизонтальной прокруткой -->
            </nav> <!-- Закрытие навигационного элемента -->
        </div> <!-- Закрытие внутреннего контейнера -->
    </div> <!-- Закрытие контейнера хлебных крошек -->

    <div class="container-xl py-5 min-height-50vh"> <!-- Основной контейнер контента с отступами и минимальной высотой -->
        <p class="small">{PFS_SUBTITLE}</p> <!-- Подзаголовок PFS из Cotonti --><!-- не используется на сегодня. оставил для примера -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключение шаблона предупреждений из текущей темы пользователя -->
        <form id="edit" action="{PFS_ACTION}" method="post"> <!-- Форма редактирования файла с ID и URL действия -->
            <div class="list-group list-group-striped list-group-flush"> <!-- Список с чередующейся заливкой и без внутренних границ -->
                <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка с flex для выравнивания -->
                    <div class="w-33">{PHP.L.File}:</div> <!-- Метка "Файл" с шириной 33% -->
                    <div class="w-66">{PFS_FILE}</div> <!-- Поле ввода имени файла с шириной 66% -->
                </div> <!-- Закрытие элемента списка -->
                <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка с flex для выравнивания -->
                    <div class="w-33">{PHP.L.Date}:</div> <!-- Метка "Дата" с шириной 33% -->
                    <div class="w-66">{PFS_DATE}</div> <!-- Значение даты создания с шириной 66% -->
                </div> <!-- Закрытие элемента списка -->
                <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка с flex для выравнивания -->
                    <div class="w-33">{PHP.L.Folder}:</div> <!-- Метка "Папка" с шириной 33% -->
                    <div class="w-66">{PFS_FOLDER}</div> <!-- Поле выбора или отображения папки с шириной 66% -->
                </div> <!-- Закрытие элемента списка -->
                <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка с flex для выравнивания -->
                    <div class="w-33">{PHP.L.URL}:</div> <!-- Метка "URL" с шириной 33% -->
                    <div class="w-66"><a href="{PFS_URL}">{PFS_URL}</a></div> <!-- Ссылка на файл с шириной 66% -->
                </div> <!-- Закрытие элемента списка -->
                <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка с flex для выравнивания -->
                    <div class="w-33">{PHP.L.Size}:</div> <!-- Метка "Размер" с шириной 33% -->
                    <div class="w-66">{PFS_SIZE} {PHP.L.kb}</div> <!-- Значение размера файла с единицей "kb" и шириной 66% -->
                </div> <!-- Закрытие элемента списка -->
                <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка с flex для выравнивания -->
                    <div class="w-33">{PHP.L.Description}:</div> <!-- Метка "Описание" с шириной 33% -->
                    <div class="w-66">{PFS_DESC}</div> <!-- Поле ввода описания с шириной 66% -->
                </div> <!-- Закрытие элемента списка -->
                <div class="list-group-item valid text-center"> <!-- Элемент списка для кнопки с центрированием -->
                    <button type="submit" class="btn btn-primary">{PHP.L.Update}</button> <!-- Кнопка отправки формы с текстом "Обновить" -->
                </div> <!-- Закрытие элемента списка -->
            </div> <!-- Закрытие списка -->
        </form> <!-- Закрытие формы редактирования -->
    </div> <!-- Закрытие основного контейнера контента -->

    <!-- BEGIN: STANDALONE_FOOTER --> <!-- Начало блока футера для автономного режима -->
        </body> <!-- Закрытие секции body -->
    </html> <!-- Закрытие тега HTML -->
    <!-- END: STANDALONE_FOOTER --> <!-- Конец блока футера для автономного режима -->

    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для группы администраторов (ID 5) -->
        <div class="container py-5"> <!-- Контейнер для уведомления с отступами -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <!-- Текст уведомления -->
                <code>pfs.edit.tpl</code> <!-- Имя шаблона в формате кода -->
            </div> <!-- Закрытие блока предупреждения -->
        </div> <!-- Закрытие контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
<!-- END: MAIN --> <!-- Конец основного блока шаблона -->