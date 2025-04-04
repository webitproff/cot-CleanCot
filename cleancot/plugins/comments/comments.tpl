<!-- 
/********************************************************************************
 * File: comments.tpl
 * Extention: plugin 'comments'
 * Description: HTML template for displaying and editing comments in a clean and responsive design.
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
<!-- Начало основного блока шаблона -->
<!-- BEGIN: MAIN -->
    <!-- Контейнер для центрирования контента с минимальной высотой 50vh -->
    <div class="container- min-height-50vh d-flex flex-column justify-content-center">
        <!-- Строка для размещения контента -->
        <div class="row">
            <!-- Колонка с автоматическим центрированием -->
            <div class="col-12 col-md-8 mx-auto">
                <!-- Карточка для отображения формы редактирования -->
                <div class="card my-4">
                    <!-- Начало блока заголовка комментариев -->
                    <!-- BEGIN: COMMENTS_TITLE -->
                    <!-- Заголовок карточки -->
                    <h2 class="card-header">
                        <!-- Текст заголовка для редактирования комментариев -->
                        {PHP.L.CleanCot_Comment_Edit}
                    </h2>
                    <!-- Конец блока заголовка комментариев -->
                    <!-- END: COMMENTS_TITLE -->
                    <!-- Тело карточки -->
                    <div class="card-body">
                        <!-- Подключение шаблона предупреждений -->
                        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
                        <!-- Начало формы редактирования комментариев -->
                        <!-- BEGIN: COMMENTS_FORM_EDIT -->
                        <!-- Форма для отправки данных -->
                        <form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
                            <!-- Контейнер для элементов формы с отступами -->
                            <div class="row g-3">
                                <!-- Колонка для заголовка автора -->
                                <div class="col-12 col-md-4">
                                    <!-- Заголовок поля "Автор" -->
                                    <strong>{COMMENTS_POSTER_TITLE}:</strong>
                                </div>
                                <!-- Колонка для значения автора -->
                                <div class="col-12 col-md-8">
                                    <!-- Значение поля "Автор" -->
                                    {COMMENTS_POSTER}
                                </div>
                                <!-- Колонка для заголовка IP -->
                                <div class="col-12 col-md-4">
                                    <!-- Заголовок поля "IP" -->
                                    <strong>{COMMENTS_IP_TITLE}:</strong>
                                </div>
                                <!-- Колонка для значения IP -->
                                <div class="col-12 col-md-8">
                                    <!-- Значение поля "IP" -->
                                    {COMMENTS_IP}
                                </div>
                                <!-- Колонка для заголовка даты -->
                                <div class="col-12 col-md-4">
                                    <!-- Заголовок поля "Дата" -->
                                    <strong>{COMMENTS_DATE_TITLE}:</strong>
                                </div>
                                <!-- Колонка для значения даты -->
                                <div class="col-12 col-md-8">
                                    <!-- Значение поля "Дата" -->
                                    {COMMENTS_DATE}
                                </div>
                                <!-- Колонка для текстового поля -->
                                <div class="col-12">
                                    <!-- Поле ввода текста комментария -->
                                    {COMMENTS_FORM_TEXT}
                                    <!-- Условие: проверка активности модуля PFS -->
                                    <!-- IF {PHP|cot_module_active('pfs')} -->
                                        <!-- Условие: отображение PFS, если доступно -->
                                        <!-- IF {COMMENTS_FORM_PFS} -->
                                        <!-- Элемент управления PFS -->
                                        {COMMENTS_FORM_PFS}
                                        <!-- Конец условия для PFS -->
                                        <!-- ENDIF -->
                                        <!-- Условие: отображение SFS, если доступно -->
                                        <!-- IF {COMMENTS_FORM_SFS} -->
                                        <!-- Разделитель между элементами -->
                                        <span class="mx-2">{PHP.cfg.separator}</span>
                                        <!-- Элемент управления SFS -->
                                        {COMMENTS_FORM_SFS}
                                        <!-- Конец условия для SFS -->
                                        <!-- ENDIF -->
                                    <!-- Конец условия для модуля PFS -->
                                    <!-- ENDIF -->
                                    <!-- Условие: проверка активности модуля Files без PFS -->
                                    <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
                                        <!-- Условие: отображение PFS для модуля Files -->
                                        <!-- IF {COMMENTS_FORM_PFS} -->
                                        <!-- Элемент управления PFS -->
                                        {COMMENTS_FORM_PFS}
                                        <!-- Конец условия для PFS -->
                                        <!-- ENDIF -->
                                        <!-- Условие: отображение SFS для модуля Files -->
                                        <!-- IF {COMMENTS_FORM_SFS} -->
                                        <!-- Разделитель между элементами -->
                                        <span class="mx-2">{PHP.cfg.separator}</span>
                                        <!-- Элемент управления SFS -->
                                        {COMMENTS_FORM_SFS}
                                        <!-- Конец условия для SFS -->
                                        <!-- ENDIF -->
                                    <!-- Конец условия для модуля Files -->
                                    <!-- ENDIF -->
                                </div>
                                <!-- Колонка для кнопки отправки -->
                                <div class="col-12 text-center">
                                    <!-- Кнопка обновления комментария -->
                                    <input type="submit" class="btn btn-primary" value="{COMMENTS_FORM_UPDATE_BUTTON}">
                                </div>
                            </div>
                        <!-- Закрывающий тег формы -->
                        </form>
                        <!-- Конец формы редактирования комментариев -->
                        <!-- END: COMMENTS_FORM_EDIT -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Назначение блока: уведомление для администратора -->
    <!-- This is the name of the template for informing the administrator -->
    <!-- Условие: отображение только для администраторов (группа с ID 5) -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <!-- Контейнер для уведомления -->
        <div class="container-xl">
            <!-- Блок предупреждения в стиле Bootstrap -->
            <div class="alert alert-warning" role="alert">
                <!-- Текст уведомления с именем пользователя и названием шаблона -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>comments.tpl</code>
            </div>
        </div>
    <!-- Конец условия для администраторов -->
    <!-- ENDIF -->
<!-- Конец основного блока шаблона -->
<!-- END: MAIN -->

<!-- Начало блока отображения комментариев -->
<!-- BEGIN: COMMENTS -->
    <!-- Условие: проверка, не используется ли AJAX -->
    <!-- IF !{COMMENTS_IS_AJAX} -->
    <!-- Контейнер для комментариев -->
    <div id="comments">
    <!-- Конец условия для AJAX -->
    <!-- ENDIF -->
        <!-- Блок с динамическим стилем отображения -->
        <div class="" <!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display:none;"<!-- ENDIF -->>
            <!-- Начало цикла вывода комментариев -->
            <!-- BEGIN: COMMENTS_ROW -->
            <!-- Карточка для каждого комментария -->
            <div class="card mb-3">
                <!-- Тело карточки -->
                <div class="card-body">
                    <!-- Контейнер для строки комментария -->
                    <div id="com{COMMENTS_ROW_ID}" class="comment-row mb-3">
                        <!-- Строка с колонками для аватара и текста -->
                        <div class="row g-3">
                            <!-- Колонка для аватара и информации об авторе -->
                            <div class="col-12 col-md-3">
                                <!-- Условие: проверка активности модуля Files без плагина userimages -->
                                <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} -->
                                    <!-- Условие: проверка наличия аватара -->
                                    <!-- IF {COMMENTS_ROW_AUTHOR_AVATAR_ID} > 0 -->
                                    <!-- Отображение аватара пользователя -->
                                    <img class="rounded" src="{COMMENTS_ROW_AUTHOR_AVATAR_URL}" width="55" height="55" alt="{COMMENTS_ROW_NAME}">
                                    <!-- Иначе: отображение дефолтного аватара -->
                                    <!-- ELSE -->
                                    <!-- Дефолтный аватар из темы -->
                                    <img class="rounded" width="55" height="55" alt="{COMMENTS_ROW_NAME}" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp">
                                    <!-- Конец условия для аватара -->
                                    <!-- ENDIF -->
                                <!-- Конец условия для модуля Files -->
                                <!-- ENDIF -->
                                <!-- Проверяем, активен ли плагин 'userimages' -->
                                <!-- IF {PHP|cot_plugin_active('userimages')} -->
                                    <!-- Условие: проверка наличия аватара через userimages -->
                                    <!-- IF {COMMENTS_ROW_AUTHOR_AVATAR_SRC} -->
                                    <!-- Отображение аватара из userimages -->
                                    <img class="rounded" src="{COMMENTS_ROW_AUTHOR_AVATAR_SRC}" alt="{COMMENTS_ROW_AUTHOR_NICKNAME}" width="50" height="50">
                                    <!-- Иначе: дефолтный аватар -->
                                    <!-- ELSE -->
                                    <!-- Дефолтный аватар из ресурсов темы -->
                                    <img class="rounded" src="{PHP.R.userimg_default_avatar}" alt="{COMMENTS_ROW_AUTHOR_NICKNAME}" width="50" height="50">
                                    <!-- Конец условия для аватара -->
                                    <!-- ENDIF -->
                                <!-- Конец условия для плагина userimages -->
                                <!-- ENDIF -->
                                <!-- Параграф с номером и именем автора -->
                                <p class="mb-1">
                                    <!-- Ссылка на комментарий и имя автора -->
                                    <a href="{COMMENTS_ROW_URL}">{COMMENTS_ROW_ORDER}.</a> {COMMENTS_ROW_AUTHOR}
                                </p>
                                <!-- Параграф с датой комментария -->
                                <p class="mb-0">{COMMENTS_ROW_DATE}</p>
                            </div>
                            <!-- Колонка для текста комментария -->
                            <div class="col-12 col-md-9">
                                <!-- Текст комментария -->
                                {COMMENTS_ROW_TEXT}
                                <!-- Условие: отображение кнопок для админа или редактирования -->
                                <!-- IF {COMMENTS_ROW_ADMIN} OR {COMMENTS_ROW_EDIT} -->
                                <!-- Контейнер для кнопок -->
                                <div class="text-end mt-2">
                                    <!-- Кнопки админа и редактирования -->
                                    {COMMENTS_ROW_ADMIN} {COMMENTS_ROW_EDIT}
                                </div>
                                <!-- Конец условия для кнопок -->
                                <!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Конец цикла вывода комментариев -->
            <!-- END: COMMENTS_ROW -->
            <!-- Условие: отображение пагинации -->
            <!-- IF {COMMENTS_PAGINATION} -->
            <!-- Контейнер для пагинации -->
            <div class="mt-3">
                <!-- Навигация для пагинации -->
                <nav aria-label="Comments navigation">
                    <!-- Список элементов пагинации -->
                    <ul class="pagination justify-content-center">
                        <!-- Ссылка на предыдущую страницу -->
                        {COMMENTS_PREVIOUS_PAGE}
                        <!-- Элементы пагинации -->
                        {COMMENTS_PAGINATION}
                        <!-- Ссылка на следующую страницу -->
                        {COMMENTS_NEXT_PAGE}
                    </ul>
                </nav>
                <!-- Информация о страницах -->
                <p class="text-center"><span>{COMMENTS_PAGES_INFO}</span></p>
            </div>
            <!-- Конец условия для пагинации -->
            <!-- ENDIF -->
            <!-- Начало блока нового комментария -->
            <!-- BEGIN: COMMENTS_NEWCOMMENT -->
            <!-- Заголовок для нового комментария -->
            <h2 class="h4 mt-4 mb-3">{PHP.L.Newcomment}</h2>
            <!-- Подключение шаблона предупреждений -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            <!-- Карточка для формы нового комментария -->
            <div class="card mb-3">
                <!-- Тело карточки -->
                <div class="card-body">
                    <!-- Форма для отправки нового комментария -->
                    <form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment" class="mb-3">
                        <!-- Начало блока для гостей -->
                        <!-- BEGIN: GUEST -->
                        <!-- Поле ввода имени для гостей -->
                        <div class="mb-3">
                            <!-- Метка и поле имени -->
                            {PHP.L.Name}: {COMMENTS_FORM_AUTHOR}
                        </div>
                        <!-- Конец блока для гостей -->
                        <!-- END: GUEST -->
                        <!-- Контейнер для текстового поля -->
                        <div class="mb-3">
                            <!-- Поле ввода текста комментария -->
                            {COMMENTS_FORM_TEXT}
                            <!-- Условие: проверка активности модуля PFS -->
                            <!-- IF {PHP|cot_module_active('pfs')} -->
                                <!-- Условие: отображение PFS -->
                                <!-- IF {COMMENTS_FORM_PFS} -->
                                <!-- Элемент управления PFS -->
                                {COMMENTS_FORM_PFS}
                                <!-- Конец условия для PFS -->
                                <!-- ENDIF -->
                                <!-- Условие: отображение SFS -->
                                <!-- IF {COMMENTS_FORM_SFS} -->
                                <!-- Разделитель между элементами -->
                                <span class="mx-2">{PHP.cfg.separator}</span>
                                <!-- Элемент управления SFS -->
                                {COMMENTS_FORM_SFS}
                                <!-- Конец условия для SFS -->
                                <!-- ENDIF -->
                            <!-- Конец условия для модуля PFS -->
                            <!-- ENDIF -->
                            <!-- Условие: проверка активности модуля Files без PFS -->
                            <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
                                <!-- Условие: отображение PFS -->
                                <!-- IF {COMMENTS_FORM_PFS} -->
                                <!-- Элемент управления PFS -->
                                {COMMENTS_FORM_PFS}
                                <!-- Конец условия для PFS -->
                                <!-- ENDIF -->
                                <!-- Условие: отображение SFS -->
                                <!-- IF {COMMENTS_FORM_SFS} -->
                                <!-- Разделитель между элементами -->
                                <span class="mx-2">{PHP.cfg.separator}</span>
                                <!-- Элемент управления SFS -->
                                {COMMENTS_FORM_SFS}
                                <!-- Конец условия для SFS -->
                                <!-- ENDIF -->
                            <!-- Конец условия для модуля Files -->
                            <!-- ENDIF -->
                        </div>
                        <!-- Условие: отображение капчи для неавторизованных пользователей -->
                        <!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFY_IMG} -->
                        <!-- Поле для капчи -->
                        <div class="mb-3">
                            <!-- Изображение и ввод капчи -->
                            {COMMENTS_FORM_VERIFY_IMG}: {COMMENTS_FORM_VERIFY_INPUT}
                        </div>
                        <!-- Конец условия для капчи -->
                        <!-- ENDIF -->
                        <!-- Контейнер для кнопки отправки -->
                        <div class="text-center">
                            <!-- Кнопка отправки формы -->
                            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Уведомление с подсказкой -->
            <div class="alert alert-info">{COMMENTS_FORM_HINT}</div>
            <!-- Конец блока нового комментария -->
            <!-- END: COMMENTS_NEWCOMMENT -->
            <!-- Начало блока для пустого списка комментариев -->
            <!-- BEGIN: COMMENTS_EMPTY -->
            <!-- Уведомление об отсутствии комментариев -->
            <div class="alert alert-warning">{COMMENTS_EMPTYTEXT}</div>
            <!-- Конец блока для пустого списка -->
            <!-- END: COMMENTS_EMPTY -->
            <!-- Начало блока для закрытых комментариев -->
            <!-- BEGIN: COMMENTS_CLOSED -->
            <!-- Уведомление о закрытии комментариев -->
            <div class="alert alert-danger">{COMMENTS_CLOSED}</div>
            <!-- Конец блока для закрытых комментариев -->
            <!-- END: COMMENTS_CLOSED -->
        </div>
    <!-- Условие: закрытие контейнера, если не AJAX -->
    <!-- IF !{COMMENTS_IS_AJAX} -->
    </div>
    <!-- Конец условия для AJAX -->
    <!-- ENDIF -->
<!-- Конец блока отображения комментариев -->
<!-- END: COMMENTS -->