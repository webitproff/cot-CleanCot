<!-- 
/********************************************************************************
 * File: i18n.locales.tpl
 * Extention: plugin 'i18n'
 * Description: HTML template for displaying a list of available locales for internationalization in Cotonti CMF.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 04 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work 
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- Начало основного блока шаблона Cotonti -->
<!-- BEGIN: MAIN -->
    <!-- Контейнер Bootstrap для центрирования контента -->
    <div class="container-xl py-5 min-height-50vh">
        <!-- Заголовок из локализации Cotonti для выбора локалей -->
        <h2 class="mb-4">{PHP.L.i18n_locale_selection}</h2>
        <!-- Список локалей в стиле Bootstrap -->
        <ul class="list-group">
            <!-- Начало цикла вывода локалей в Cotonti -->
            <!-- BEGIN: I18N_LOCALE_ROW -->
                <!-- Элемент списка с ссылкой на локаль -->
                <li class="list-group-item">
                    <!-- Ссылка на выбор локали из Cotonti -->
                    <a href="{I18N_LOCALE_ROW_URL}" class="text-decoration-none">{I18N_LOCALE_ROW_TITLE}</a>
                </li>
            <!-- Конец цикла локалей в Cotonti -->
            <!-- END: I18N_LOCALE_ROW -->
        </ul>
    </div>

    <!-- Назначение блока: уведомление для администратора -->
    <!-- This is the name of the template for informing the administrator -->
    <!-- Условие Cotonti: показ уведомления только админам (группа 5) -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <!-- Контейнер Bootstrap для уведомления -->
        <div class="container">
            <!-- Блок предупреждения в стиле Bootstrap для админов -->
            <div class="alert alert-warning" role="alert">
                <!-- Текст уведомления с именем админа и названием шаблона из Cotonti -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>i18n.locales.tpl</code>
            </div>
        </div>
    <!-- Конец условия для админов в Cotonti -->
    <!-- ENDIF -->
<!-- Конец основного блока шаблона Cotonti -->
<!-- END: MAIN -->