<!-- 
/********************************************************************************
 * File: i18n.structure.tpl
 * Extention: plugin 'i18n'
 * Description: HTML template for managing and editing localized structure categories in Cotonti CMF.
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
    <!-- Контейнер для AJAX-обновлений в Cotonti -->
    <div id="ajaxBlock">
        <!-- Контейнер Bootstrap с большими отступами -->
        <div class="container-xl py-5 min-height-50vh">
            <!-- Подключение шаблона предупреждений из темы Cotonti -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            <!-- Заголовок из локализации Cotonti для структуры локализации -->
            <h2 class="mb-4">{PHP.L.i18n_structure}</h2>
            <!-- Заголовок карточки с двумя языками -->
            <div class="col-12 mb-5">
                <!-- Сетка для заголовков языков -->
                <div class="row">
                    <!-- Оригинальный язык из Cotonti -->
                    <div class="col-6">
                        <div class="p-3 mb-2 bg-success text-white">{I18N_ORIGINAL_LANG}</div>
                    </div>
                    <!-- Целевой язык из Cotonti -->
                    <div class="col-6">
                        <div class="p-3 mb-2 bg-warning text-dark">{I18N_TARGET_LANG}</div>
                    </div>
                </div>
            </div>
            <!-- Форма для отправки данных локализации в Cotonti -->
            <form action="{I18N_ACTION}" method="post">
                <!-- Контейнер для карточек категорий -->
                <div class="row">
                    <!-- Начало цикла категорий в Cotonti -->
                    <!-- BEGIN: I18N_CATEGORY_ROW -->
                        <!-- Карточка для каждой категории -->
                        <div class="col-12">
                            <!-- Карточка без границ и закруглений -->
                            <div class="card border-0 mb-5" style="border-radius: 0;">
                                <!-- Тело карточки без внутренних отступов -->
                                <div class="card-body p-0">
                                    <!-- Сетка для содержимого -->
                                    <div class="row">
                                        <!-- Колонка для оригинального языка с фоном и акцентом -->
                                        <div class="col-12 col-md-6 bg-success-subtle text-success-emphasis">
                                            <!-- Заголовок категории из Cotonti -->
                                            <h4 class="card-title mt-3">{I18N_CATEGORY_ROW_TITLE}</h4>
                                            <!-- Описание категории в стиле Bootstrap -->
                                            <p class="card-text text-muted"><em>{I18N_CATEGORY_ROW_DESC}</em></p>
                                            <!-- Скрытое поле с кодом категории из Cotonti -->
                                            <input type="hidden" name="{I18N_CATEGORY_ROW_CODE_NAME}" value="{I18N_CATEGORY_ROW_CODE_VALUE}" />
                                        </div>
                                        <!-- Колонка для целевого языка с фоном и акцентом -->
                                        <div class="col-12 col-md-6 bg-warning-subtle text-warning-emphasis">
                                            <!-- Поле ввода названия на целевом языке с отступами -->
                                            <div class="py-2">
                                                <input type="text" class="form-control" name="{I18N_CATEGORY_ROW_ITITLE_NAME}" value="{I18N_CATEGORY_ROW_ITITLE_VALUE}" maxlength="128" />
                                            </div>
                                            <!-- Поле ввода описания на целевом языке с отступами -->
                                            <div class="py-2">
                                                <textarea class="form-control" name="{I18N_CATEGORY_ROW_IDESC_NAME}" rows="4">{I18N_CATEGORY_ROW_IDESC_VALUE}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- Конец цикла категорий в Cotonti -->
                    <!-- END: I18N_CATEGORY_ROW -->
                    <!-- Кнопка отправки формы -->
                    <div class="col-12 text-center mt-4">
                        <!-- Кнопка "Обновить" в стиле Bootstrap из локализации Cotonti -->
                        <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                    </div>
                </div>
            </form>
            <!-- Пагинация в стиле Bootstrap для Cotonti -->
            <nav aria-label="Pagination" class="mt-4 text-center">
                <!-- Ссылки на предыдущую, текущую и следующую страницы из Cotonti -->
                {I18N_PAGINATION_PREV}{I18N_PAGNAV}{I18N_PAGINATION_NEXT}
            </nav>
        </div>
    </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- Условие Cotonti: показ уведомления только админам (группа 5) -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <!-- Контейнер Bootstrap для уведомления -->
        <div class="container-xl py-4">
            <!-- Блок предупреждения в стиле Bootstrap для админов -->
            <div class="alert alert-warning" role="alert">
                <!-- Текст уведомления с именем админа и названием шаблона из Cotonti -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>i18n.structure.tpl</code>
            </div>
        </div>
    <!-- Конец условия для админов в Cotonti -->
    <!-- ENDIF -->
<!-- Конец основного блока шаблона Cotonti -->
<!-- END: MAIN -->