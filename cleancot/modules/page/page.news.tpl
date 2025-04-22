<!-- 
/********************************************************************************
 * File: page.news.tpl
 * Extention: module 'page'
 * Description: HTML template of the full news page or article in the category whose code is "news". This template is an extended version of the main page.tpl template, which is used for all articles if the category code is not specified in the file name.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 22 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- Начало основного блока шаблона Cotonti -->
<!-- BEGIN: MAIN -->

    <!-- Условие Cotonti: проверка активности модуля 'files' и режима страницы -->
    <!-- IF {PHP|cot_module_active('files')} AND {PHP.env.location} == 'pages' AND {PHP.m} == 'main' -->
        <!-- Подключение скрипта lightbox.js для галереи только в режиме 'main' (полная новость) -->
        <script src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/js/lightbox.js"></script>
    <!-- Конец условия подключения скрипта -->
    <!-- ENDIF -->

    <!-- Контейнер хлебных крошек с светлым фоном и серой нижней границей в стиле Bootstrap -->
    <div class="bg-light py-2 border-bottom border-secondary">
        <!-- Внутренний контейнер Bootstrap с вертикальными отступами -->
        <div class="container py-2">
            <!-- Навигация для хлебных крошек с ARIA-меткой в стиле Bootstrap -->
            <nav aria-label="breadcrumb">
                <!-- Список хлебных крошек из Cotonti с горизонтальной прокруткой -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
                    <!-- Хлебные крошки для текущей страницы из Cotonti -->
                    {PAGE_BREADCRUMBS}
                </ol>
            </nav>
        </div>
    </div>

    <!-- Основной контейнер средней ширины с flex-выравниванием и отступами в Cotonti -->
    <div class="container-md d-flex flex-column justify-content-center py-4">
        <!-- Подключение шаблона предупреждений из текущей темы Cotonti -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <!-- Заголовок страницы из Cotonti размером h3 с нижним отступом -->
        <h1 class="h3 mb-3">{PAGE_TITLE}</h1>
        <!-- Условие Cotonti: отображение статуса для админов или владельца -->
        <!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} == {PAGE_OWNER_ID} -->
            <!-- Статус публикации новости с жёлтым бейджем в стиле Bootstrap -->
            <p class="mb-1"><strong>{PHP.L.Status}:</strong> <span class="badge bg-warning text-black">{PAGE_LOCAL_STATUS}</span></p>
        <!-- Конец условия статуса -->
        <!-- ENDIF -->
        <!-- Условие Cotonti: отображение описания, если оно задано -->
        <!-- IF {PAGE_DESCRIPTION} -->
            <!-- Описание страницы из Cotonti размером fs-6 с нижним отступом -->
            <h2 class="fs-6 mb-4">{PAGE_DESCRIPTION}</h2>
        <!-- Конец условия описания -->
        <!-- ENDIF -->

        <!-- Сетка Bootstrap для размещения основного контента и боковой панели -->
        <div class="row">
            <!-- Колонка основного контента: 100% на малых, 8/12 с автоцентрированием на средних -->
            <div class="col-12 col-md-8 mx-auto pb-5">
                <!-- Контейнер изображения с нижним отступом -->
                <div class="mb-5">
                    <!-- Контейнер изображения с закруглением и тенью в стиле Bootstrap -->
                    <div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1;">
                        <!-- Условие Cotonti: проверка наличия главного изображения через экстраполяцию -->
                        <!-- IF {PAGE_LINK_MAIN_IMAGE} -->
                            <!-- Главное изображение страницы из Cotonti, адаптивное с обрезкой -->
                            <img src="{PAGE_LINK_MAIN_IMAGE}" alt="{PAGE_TITLE}" class="img-fluid object-fit-cover">
                        <!-- Альтернатива: если главного изображения нет -->
                        <!-- ELSE -->
                            <!-- Дефолтное изображение из темы Cotonti -->
                            <img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cotonti-cleancot.webp" alt="{PAGE_TITLE}" class="img-fluid object-fit-cover">
                        <!-- Конец условия изображения -->
                        <!-- ENDIF -->
                    </div>
                </div>

                <!-- Карточка основного контента с нижним отступом в стиле Bootstrap -->
                <div class="card mb-4">
                    <!-- Тело карточки -->
                    <div class="card-body">
                        <!-- Условие Cotonti: проверка активности модуля 'files' -->
                        <!-- IF {PHP|cot_module_active('files')} -->
                            <!-- Условие Cotonti: проверка наличия изображений для галереи -->
                            <!-- IF {PAGE_ID|cot_filesCount('page', $this, '', 'images')} > 0 -->
                                <!-- Галерея изображений из Cotonti через функцию cot_filesGallery -->
                                {PAGE_ID|cot_filesGallery('page', $this, '', 'files.gallery')}
                            <!-- Конец условия наличия изображений -->
                            <!-- ENDIF -->
                        <!-- Конец условия модуля 'files' -->
                        <!-- ENDIF -->

                        <!-- Условие Cotonti: отображение числа комментариев, если они есть -->
                        <!-- IF {PAGE_COMMENTS_COUNT} > 0 -->
                            <!-- Количество комментариев из Cotonti с отступом -->
                            <div class="mb-3">{PHP.L.CleanCot_Comments}: {PAGE_COMMENTS_COUNT}</div>
                        <!-- Конец условия комментариев -->
                        <!-- ENDIF -->
						<!-- IF {PHP|cot_plugin_active('seoarticle')} -->
						{PAGE_READ_TIME}
						<!-- ENDIF -->
                        <!-- Сетка Bootstrap для тегов и категории с отступами -->
                        <div class="row g-3 mb-3">
                            <!-- Колонка тегов: 100% на малых, 6/12 на средних -->
                            <div class="col-12 col-md-6">
                                <!-- Метка "Теги" жирным шрифтом из локализации Cotonti -->
                                <strong>{PHP.L.Tags}:</strong>
                                <!-- Начало цикла вывода тегов в Cotonti -->
                                <!-- BEGIN: PAGE_TAGS_ROW -->
                                    <!-- Условие Cotonti: добавление запятой перед тегом, если не первый -->
                                    <!-- IF {PHP.tag_i} > 0 -->, 
                                    <!-- Конец условия запятой -->
                                    <!-- ENDIF -->
                                    <!-- Ссылка на тег из Cotonti с атрибутом nofollow -->
                                    <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
                                <!-- Конец цикла тегов -->
                                <!-- END: PAGE_TAGS_ROW -->
                                <!-- Начало блока Cotonti: сообщение об отсутствии тегов -->
                                <!-- BEGIN: PAGE_NO_TAGS -->
                                    <!-- Сообщение об отсутствии тегов из Cotonti -->
                                    {PAGE_NO_TAGS}
                                <!-- Конец блока отсутствия тегов -->
                                <!-- END: PAGE_NO_TAGS -->
                            </div>
                            <!-- Колонка категории: 100% на малых, 6/12 с выравниванием вправо на средних -->
                            <div class="col-12 col-md-6 text-md-end">
                                <!-- Метка "Категория" и путь категории из Cotonti -->
                                <strong>{PHP.L.Filedunder}:</strong> {PAGE_CAT_PATH}
                            </div>
                        </div>

                        <!-- Текст новости из Cotonti с нижним отступом -->
                        <div class="mb-3">{PAGE_TEXT}</div>
                    </div>
                </div>

                <!-- Условие Cotonti: проверка активности модуля 'files' для загрузок -->
                <!-- IF {PHP|cot_module_active('files')} -->
                    <!-- Условие Cotonti: проверка наличия файлов для скачивания -->
                    <!-- IF {PAGE_ID|cot_filesCount('page',$this,'','files')} > 0 -->
                        <!-- Карточка загрузок с тенью и отступом в стиле Bootstrap -->
                        <div class="card mb-4 shadow-sm">
                            <!-- Тело карточки -->
                            <div class="card-body">
                                <!-- Заголовок блока загрузок размером h5 жирным шрифтом -->
                                <h3 class="h5 fw-bold card-title mb-2">{PHP.L.files_downloads}</h3>
                                <!-- Список загрузок из Cotonti через функцию cot_filesDownloads -->
                                {PAGE_ID|cot_filesDownloads('page',$this)}
                            </div>
                        </div>
                    <!-- Конец условия наличия файлов -->
                    <!-- ENDIF -->
                <!-- Конец условия модуля 'files' -->
                <!-- ENDIF -->

                <!-- Условие Cotonti: проверка активности плагина 'comments' -->
                <!-- IF {PHP|cot_plugin_active('comments')} -->
                    <!-- Блок комментариев из Cotonti -->
                    {PAGE_COMMENTS}
                <!-- Конец условия комментариев -->
                <!-- ENDIF -->
            </div>

            <!-- Колонка боковой панели: 100% на малых, 4/12 с автоцентрированием на средних -->
            <div class="col-12 col-md-4 mx-auto">
                <!-- Условие Cotonti: отображение админ-панели для группы администраторов (ID 5) -->
                <!-- IF {PHP.usr.maingrp} == 5 -->
                    <!-- Начало блока админ-панели в Cotonti -->
                    <!-- BEGIN: PAGE_ADMIN -->
                        <!-- Карточка админ-панели с отступом в стиле Bootstrap -->
                        <div class="card mb-4">
                            <!-- Заголовок карточки с тёмно-серым фоном и белым текстом -->
                            <div class="card-header bg-costum-dgrey text-white">
                                <!-- Заголовок "Админ-панель" размером h5 без отступа из локализации Cotonti -->
                                <h2 class="h5 mb-0">{PHP.L.Adminpanel}</h2>
                            </div>
                            <!-- Тело карточки без внутренних отступов -->
                            <div class="card-body p-0">
                                <!-- Список действий без границ в стиле Bootstrap -->
                                <ul class="list-group list-group-flush">
                                    <!-- Условие Cotonti: действия для администратора -->
                                    <!-- IF {PHP.usr.isadmin} -->
                                        <!-- Элемент списка с ссылкой на админ-панель -->
                                        <li class="list-group-item">
                                            <!-- Ссылка на админ-панель из Cotonti -->
                                            <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
                                        </li>
                                        <!-- Условие Cotonti: ссылка на непроверенные страницы, если они есть -->
                                        <!-- IF {PHP.structure.page.unvalidated.path} -->
                                            <!-- Элемент списка с ссылкой на непроверенные страницы -->
                                            <li class="list-group-item">
                                                <!-- Ссылка на непроверенные страницы из структуры Cotonti -->
                                                <a href="{PHP|cot_url('page','c=unvalidated')}" title="{PHP.structure.page.unvalidated.title}">{PHP.structure.page.unvalidated.title}</a>
                                            </li>
                                        <!-- Конец условия непроверенных страниц -->
                                        <!-- ENDIF -->
                                    <!-- Конец условия администратора -->
                                    <!-- ENDIF -->
                                    <!-- Элемент списка с ссылкой на добавление новой страницы -->
                                    <li class="list-group-item">
                                        <!-- Ссылка на добавление страницы из Cotonti -->
                                        <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
                                    </li>
                                    <!-- Элемент списка с действием отправки на проверку из Cotonti -->
                                    <li class="list-group-item">{PAGE_ADMIN_UNVALIDATE}</li>
                                    <!-- Элемент списка с действием редактирования из Cotonti -->
                                    <li class="list-group-item">{PAGE_ADMIN_EDIT}</li>
                                    <!-- Условие Cotonti: проверка выбранного языка для редактирования перевода -->
                                    <!-- IF {I18N_LANG_ROW_CLASS} == "selected" -->
                                        <!-- Экспериментальная ссылка на редактирование перевода в стиле Bootstrap -->
                                        <li class="list-group-item">
                                            <!-- Ссылка на редактирование перевода из Cotonti -->
                                            <a href="{PAGE_ADMIN_EDIT_URL}" class="btn btn-warning">{PHP.L.i18n_editing}</a>
                                        </li>
                                    <!-- Конец условия выбранного языка -->
                                    <!-- ENDIF -->
                                    <!-- Элемент списка с действием клонирования из Cotonti -->
                                    <li class="list-group-item">{PAGE_ADMIN_CLONE}</li>
                                    <!-- Элемент списка с действием удаления из Cotonti -->
                                    <li class="list-group-item">{PAGE_ADMIN_DELETE}</li>
                                    <!-- Условие Cotonti: отображение ссылки на перевод, если доступно -->
                                    <!-- IF {PAGE_I18N_TRANSLATE} -->
                                        <!-- Элемент списка с действием перевода из Cotonti -->
                                        <li class="list-group-item">{PAGE_I18N_TRANSLATE}</li>
                                    <!-- Конец условия перевода -->
                                    <!-- ENDIF -->
                                    <!-- Условие Cotonti: отображение ссылки на удаление перевода, если доступно -->
                                    <!-- IF {PAGE_I18N_DELETE} -->
                                        <!-- Элемент списка с действием удаления перевода из Cotonti -->
                                        <li class="list-group-item">{PAGE_I18N_DELETE}</li>
                                    <!-- Конец условия удаления перевода -->
                                    <!-- ENDIF -->
                                </ul>
                            </div>
                        </div>
                    <!-- Конец блока админ-панели в Cotonti -->
                    <!-- END: PAGE_ADMIN -->
                <!-- Конец условия группы администраторов -->
                <!-- ENDIF -->

                <!-- Карточка информации об авторе с отступом в стиле Bootstrap -->
                <div class="card mb-4">
                    <!-- Заголовок карточки с тёмно-синим фоном и белым текстом -->
                    <h2 class="h5 card-header bg-costum-dblue text-white">{PHP.L.CleanCot_infos}</h2>
                    <!-- Тело карточки -->
                    <div class="card-body">
                        <!-- Сетка Bootstrap для аватара и информации об авторе -->
                        <div class="row justify-content-between">
                            <!-- Колонка аватара: автоширина, центрирование на малых, влево на средних -->
                            <div class="col-md-auto text-center text-md-start">
                                <!-- Условие Cotonti: проверка активности плагина 'userimages' -->
                                <!-- IF {PHP|cot_plugin_active('userimages')} -->
                                    <!-- Условие Cotonti: проверка наличия аватара владельца -->
                                    <!-- IF {PAGE_OWNER_AVATAR_SRC} -->
                                        <!-- Аватар владельца из Cotonti с круглой формой -->
                                        <img src="{PAGE_OWNER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                                    <!-- Альтернатива: если аватара нет -->
                                    <!-- ELSE -->
                                        <!-- Дефолтный аватар из ресурсов темы Cotonti -->
                                        <img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                                    <!-- Конец условия аватара -->
                                    <!-- ENDIF -->
                                <!-- Конец условия 'userimages' -->
                                <!-- ENDIF -->
                                <!-- Условие Cotonti: проверка активности 'files' без 'userimages' -->
                                <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} -->
                                    <!-- Условие Cotonti: проверка наличия ID аватара -->
                                    <!-- IF {PAGE_OWNER_AVATAR_ID} > 0 -->
                                        <!-- Аватар из модуля 'files' в Cotonti -->
                                        <img src="{PAGE_OWNER_AVATAR_URL}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                                    <!-- Альтернатива: если ID аватара нет -->
                                    <!-- ELSE -->
                                        <!-- Дефолтный аватар из ресурсов темы Cotonti -->
                                        <img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                                    <!-- Конец условия ID аватара -->
                                    <!-- ENDIF -->
                                <!-- Конец условия 'files' без 'userimages' -->
                                <!-- ENDIF -->
                                <!-- Условие Cotonti: отображение статуса онлайн -->
                                <!-- IF {PAGE_OWNER_ONLINE} -->
                                    <!-- Статус "Онлайн" с зелёным значком в стиле Bootstrap -->
                                    <p class="mb-3">
                                        <span class="badge text-bg-success">{PHP.L.Online}</span>
                                    </p>
                                <!-- Альтернатива: статус оффлайн -->
                                <!-- ELSE -->
                                    <!-- Статус "Оффлайн" с серым значком в стиле Bootstrap -->
                                    <p class="mb-3">
                                        <span class="badge text-bg-secondary">{PHP.L.Offline}</span>
                                    </p>
                                <!-- Конец условия статуса -->
                                <!-- ENDIF -->
                            </div>
                            <!-- Колонка информации: автоширина, центрирование на малых, вправо на средних -->
                            <div class="col-md-auto text-center text-md-end">
                                <!-- Заголовок с именем автора или владельца размером h5 -->
                                <h4 class="h5 mb-0">
                                    <!-- Условие Cotonti: выбор между автором и владельцем -->
                                    <!-- IF !{PAGE_AUTHOR} OR {PAGE_AUTHOR} == {OWNER_NAME} -->
                                        <!-- Имя владельца из Cotonti -->
                                        {PAGE_OWNER}
                                    <!-- Альтернатива: если автор указан и отличается -->
                                    <!-- ELSE -->
                                        <!-- Имя автора из Cotonti -->
                                        {PAGE_AUTHOR}
                                    <!-- Конец условия автора -->
                                    <!-- ENDIF -->
                                </h4>
                                <!-- Дата последнего входа владельца из Cotonti мелким шрифтом -->
                                <p class="small">{PHP.L.Lastlogged}: {PAGE_OWNER_LASTLOG}</p>
                            </div>
                        </div>

                        <!-- Список ссылок без границ в стиле Bootstrap -->
                        <ul class="list-group list-group-flush">
                            <!-- Условие Cotonti: ссылка на ЛС, если активен модуль 'pm' -->
                            <!-- IF {PHP|cot_module_active('pm')} AND {PHP.usr.id} > 0 AND {PHP.usr.id} != {PAGE_OWNER_ID} -->
                                <!-- Элемент списка с ссылкой на отправку ЛС -->
                                <li class="list-group-item px-0">
                                    <!-- Ссылка на отправку личного сообщения из Cotonti -->
                                    <a href="{PHP.pag.user_id|cot_url('pm','m=send&to=$this', '', 1)}">{PHP.L.users_sendpm}</a>
                                </li>
                            <!-- Конец условия ЛС -->
                            <!-- ENDIF -->
                            <!-- Условие Cotonti: действия, если есть права на запись в модуле 'page' -->
                            <!-- IF {PHP.usr.id|cot_auth('page', '', 'W')} -->
                                <!-- Условие Cotonti: ссылка на добавление страницы -->
                                <!-- IF {PHP.usr.auth_write} -->
                                    <!-- Элемент списка с ссылкой на добавление страницы -->
                                    <li class="list-group-item px-0">
                                        <!-- Ссылка на добавление страницы из Cotonti -->
                                        <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
                                    </li>
                                <!-- Конец условия прав на запись -->
                                <!-- ENDIF -->
                                <!-- Условие Cotonti: ссылка на редактирование, если пользователь — владелец -->
                                <!-- IF {PHP.usr.id} == {PAGE_OWNER_ID} -->
                                    <!-- Элемент списка с ссылкой на редактирование -->
                                    <li class="list-group-item px-0">
                                        <!-- Ссылка на редактирование страницы из Cotonti -->
                                        <a href="{PAGE_ID|cot_url('page','m=edit&id=$this')}">{PHP.L.Edit}</a>
                                    </li>
                                <!-- Конец условия владельца -->
                                <!-- ENDIF -->
                                <!-- Условие Cotonti: экспериментальная ссылка на редактирование перевода -->
                                <!-- IF {I18N_LANG_ROW_CLASS} == "selected" -->
                                    <!-- Элемент списка с кнопкой редактирования перевода -->
                                    <li class="list-group-item">
                                        <!-- Ссылка на редактирование перевода из Cotonti в стиле Bootstrap -->
                                        <a href="{PAGE_ADMIN_EDIT_URL}" class="btn btn-warning">{PHP.L.i18n_editing}</a>
                                    </li>
                                <!-- Конец условия выбранного языка -->
                                <!-- ENDIF -->
                                <!-- Условие Cotonti: ссылка на перевод, если доступно -->
                                <!-- IF {PAGE_I18N_TRANSLATE} -->
                                    <!-- Элемент списка с ссылкой на перевод -->
                                    <li class="list-group-item px-0">
                                        <!-- Ссылка на перевод из Cotonti -->
                                        <a href="{PHP.url_i18n}">{PHP.L.i18n_translate}</a>
                                    </li>
                                <!-- Конец условия перевода -->
                                <!-- ENDIF -->
                            <!-- Конец условия прав на запись -->
                            <!-- ENDIF -->
                            <!-- Условие Cotonti: отображение даты публикации -->
                            <!-- IF {PAGE_CREATED} -->
                                <!-- Элемент списка с датой публикации -->
                                <li class="list-group-item px-0">
                                    <!-- Дата публикации из Cotonti жирным шрифтом -->
                                    <strong>{PHP.L.CleanCot_page_published}</strong> {PAGE_CREATED}
                                </li>
                            <!-- Конец условия даты создания -->
                            <!-- ENDIF -->
                            <!-- Условие Cotonti: отображение даты обновления -->
                            <!-- IF {PAGE_UPDATED} -->
                                <!-- Элемент списка с датой обновления -->
                                <li class="list-group-item px-0">
                                    <!-- Дата обновления из Cotonti жирным шрифтом -->
                                    <strong>{PHP.L.CleanCot_page_latest_update}</strong> {PAGE_UPDATED}
                                </li>
                            <!-- Конец условия даты обновления -->
                            <!-- ENDIF -->
                            <!-- Условие Cotonti: отображение переключателя языков -->
                            <!-- IF {PHP.pag_i18n_locales} > 1 -->
                                <!-- Начало блока переключателя языков в Cotonti -->
                                <!-- BEGIN: I18N_LANG -->
                                    <!-- Элемент списка с переключателем языков -->
                                    <li class="list-group-item px-0">
                                        <!-- Метка "Язык" жирным шрифтом из локализации Cotonti -->
                                        <strong>{PHP.L.Language}:</strong>
                                        <!-- Встроенный список языков с отступом в стиле Bootstrap -->
                                        <ul class="list-inline mt-1">
                                            <!-- Начало цикла вывода языков в Cotonti -->
                                            <!-- BEGIN: I18N_LANG_ROW -->
                                                <!-- Условие Cotonti: отображение языка, если он не текущий -->
                                                <!-- IF {PHP.i18n_locale} != {I18N_LANG_ROW_CODE} -->
                                                    <!-- Элемент встроенного списка -->
                                                    <li class="list-inline-item">
                                                        <!-- Ссылка на язык из Cotonti -->
                                                        <a href="{I18N_LANG_ROW_URL}">
                                                            <!-- Условие Cotonti: проверка наличия флага языка -->
                                                            <!-- IF {I18N_LANG_ROW_CODE|is_file('images/flags/$this.png')} -->
                                                                <!-- Флаг языка из Cotonti -->
                                                                <img src="images/flags/{I18N_LANG_ROW_CODE}.png" alt="{I18N_LANG_ROW_CODE}" class="me-1" style="width: 16px;">
                                                            <!-- Конец условия флага -->
                                                            <!-- ENDIF -->
                                                            <!-- Название языка из Cotonti -->
                                                            {I18N_LANG_ROW_TITLE}
                                                        </a>
                                                    </li>
                                                <!-- Конец условия текущего языка -->
                                                <!-- ENDIF -->
                                            <!-- Конец цикла языков -->
                                            <!-- END: I18N_LANG_ROW -->
                                        </ul>
                                    </li>
                                <!-- Конец блока переключателя языков -->
                                <!-- END: I18N_LANG -->
                            <!-- Конец условия множества языков -->
                            <!-- ENDIF -->
                            <!-- Начало блока прикреплённого файла в Cotonti -->
                            <!-- BEGIN: PAGE_FILE -->
                                <!-- Элемент списка с информацией о файле -->
                                <li class="list-group-item px-0">
                                    <!-- Начало блока ограниченного доступа в Cotonti -->
                                    <!-- BEGIN: MEMBERSONLY -->
                                        <!-- Заголовок страницы для ограниченного доступа -->
                                        <p>{PAGE_TITLE}</p>
                                    <!-- Конец блока ограниченного доступа -->
                                    <!-- END: MEMBERSONLY -->
                                    <!-- Уведомление о наличии вложения мелким шрифтом из локализации Cotonti -->
                                    <p class="small">{PHP.L.CleanCot_page_HasAttachment}</p>
                                    <!-- Начало блока скачивания в Cotonti -->
                                    <!-- BEGIN: DOWNLOAD -->
                                        <!-- Кнопка скачивания файла в стиле Bootstrap -->
                                        <p class="small"><a href="{PAGE_FILE_URL}" class="btn btn-info btn-sm me-2" data-bs-toggle="tooltip" data-bs-title="{PAGE_FILE_NAME}">{PHP.L.CleanCot_page_DownloadFile}</a></p>
                                    <!-- Конец блока скачивания -->
                                    <!-- END: DOWNLOAD -->
                                    <!-- Число скачиваний файла из Cotonti мелким шрифтом -->
                                    <p class="small">{PHP.L.Downloaded}: {PAGE_FILE_COUNTTIMES}</p>
                                </li>
                            <!-- Конец блока файла -->
                            <!-- END: PAGE_FILE -->
                        </ul>
                    </div>
                </div>

                <!-- Начало блока краткого содержания в Cotonti -->
                <!-- BEGIN: PAGE_MULTI -->
                    <!-- Карточка краткого содержания с отступами в стиле Bootstrap -->
                    <div class="card mt-4 mb-4">
                        <!-- Заголовок карточки с жёлтым фоном и тёмным текстом -->
                        <div class="card-header bg-warning text-dark">
                            <!-- Заголовок "Краткое содержание" размером h5 без отступа из локализации Cotonti -->
                            <h2 class="h5 mb-0">{PHP.L.Summary}</h2>
                        </div>
                        <!-- Тело карточки -->
                        <div class="card-body">
                            <!-- Заголовки вкладок краткого содержания из Cotonti -->
                            {PAGE_MULTI_TABTITLES}
                            <!-- Навигация по вкладкам краткого содержания из Cotonti -->
                            <p class="mb-0">{PAGE_MULTI_TABNAV}</p>
                        </div>
                    </div>
                <!-- Конец блока краткого содержания -->
                <!-- END: PAGE_MULTI -->
				<!-- IF {PHP|cot_plugin_active('seoarticle')} -->
				<!-- IF {RELATED_PAGES} -->
				<div class="related">
				<h2 class="h5 my-3">{PHP.L.seoarticle_related}</h2>
					<!-- BEGIN: MAIN.RELATED_PAGES.RELATED_ROW -->
					<a class="link-secondary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="{RELATED_ROW_URL}">
						<div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1;">
							<!-- Условие Cotonti: проверка наличия главного изображения через экстраполяцию -->
							<!-- IF {RELATED_ROW_LINK_MAIN_IMAGE} -->
								<!-- Главное изображение страницы из Cotonti, адаптивное с обрезкой -->
								<img src="{RELATED_ROW_LINK_MAIN_IMAGE}" alt="{RELATED_ROW_TITLE}" class="img-fluid object-fit-cover">
							<!-- Альтернатива: если главного изображения нет -->
							<!-- ELSE -->
								<!-- Дефолтное изображение из темы Cotonti -->
								<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cotonti-cleancot.webp" alt="{PAGE_TITLE}" class="img-fluid object-fit-cover">
							<!-- Конец условия изображения -->
							<!-- ENDIF -->
						</div>
						<h3 class="h5 my-4">{RELATED_ROW_TITLE}</h3>
						<p>{RELATED_ROW_DESC}</p>
					</a>
					<!-- END: MAIN.RELATED_PAGES.RELATED_ROW -->
				</div>
				<!-- ENDIF -->
				<!-- ENDIF -->
            </div>
        </div>
    </div>

    <!-- Условие Cotonti: подключение дополнительного шаблона для администраторов -->
    <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
        <!-- Подключение шаблона mskin.tpl для группы администраторов из темы Cotonti -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"}
    <!-- Конец условия подключения mskin -->
    <!-- ENDIF -->

<!-- Конец основного блока шаблона Cotonti -->
<!-- END: MAIN -->
