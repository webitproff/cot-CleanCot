<!-- 
/********************************************************************************
 * File: index.tpl
 * Description: HTML template of the main page of the site. Various plugins and modules are built into it.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 08 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work 
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона Cotonti -->
<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие PHP.usr.maingrp == 5 - просмотр info для админов -->
<div class="container-xl py-2">
	<div class="alert alert-warning" role="alert">
	<small>for informing the administrator</small>
	 <strong>{PHP.usr.name}</strong>, This is the beginning of the HTML template <code>index.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
</div>
<!-- ENDIF --> <!-- Конец условия просмотр info для админов -->
<main class="py-5"> <!-- Основной тег-контейнер страницы с вертикальными отступами 4 -->
    <div class="container-xl"> <!-- Контейнер Bootstrap с увеличенной максимальной шириной -->
        <div class="row"> <!-- Сетка Bootstrap для размещения колонок -->
            <!-- Основной контент (2/3 ширины) --> <!-- Комментарий к секции основного контента -->
            <div class="col-lg-8 mb-4"> <!-- Колонка шириной 8/12 на экранах lg и больше с нижним отступом 4 -->
                {FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"} <!-- Подключение шаблона warnings.tpl для вывода предупреждений -->
                <!-- Новости plugin 'indexnews' -->
                <!-- IF {INDEX_NEWS} --> <!-- Условие Cotonti: проверка наличия новостей для вывода -->
                    {INDEX_NEWS} <!-- Вывод блока новостей из Cotonti -->
                <!-- ENDIF --> <!-- Конец условия для новостей -->
            </div> <!-- Закрытие колонки основного контента -->

            <!-- Сайдбар (1/3 ширины) --> <!-- Комментарий к секции сайдбара -->
            <div class="col-lg-4 mb-4"> <!-- Колонка шириной 4/12 на экранах lg и больше с нижним отступом 4 -->
                <!-- Админ-блок --> <!-- Комментарий к блоку администратора -->
                <!-- IF {PHP.usr.isadmin} --> <!-- Условие Cotonti: проверка, является ли пользователь администратором -->
                <div class="card mb-4"> <!-- Карточка Bootstrap с нижним отступом 4 -->
                    <div class="card-header bg-costum-dgrey text-white"> <!-- Заголовок карточки с тёмным фоном и белым текстом -->
                        <h2 class="h5 mb-0">{PHP.L.Admin}</h2> <!-- Заголовок 5 уровня без нижнего отступа с текстом "Админ" из языкового файла -->
                    </div> <!-- Закрытие заголовка карточки -->
                    <div class="card-body"> <!-- Тело карточки -->
                        <ul class="list-group list-group-flush"> <!-- Список без стандартных маркеров -->
                            <li class="list-group-item"><a href="{PHP|cot_url('admin')}" class="fw-semibold text-danger text-decoration-none">{PHP.L.Adminpanel}</a></li> <!-- Ссылка на админ-панель с синим текстом "Панель управления" -->
                            <li class="list-group-item"><a href="{PHP|cot_url('users')}" class="text-primary-emphasis text-decoration-none">{PHP.L.Users}</a></li> <!-- Ссылка на страницу пользователей с синим текстом "Пользователи" -->
                            <li class="list-group-item"><a href="{PHP|cot_url('users','m=profile')}" class="text-primary-emphasis text-decoration-none">{PHP.L.Profile}</a></li> <!-- Ссылка на профиль с синим текстом "Профиль" -->
							<!-- IF {PHP|cot_module_active('pfs')} --> <!-- условие проверки функцией на статус активности модуля "PFS" -->
                            <li class="list-group-item"><a href="{PHP|cot_url('pfs')}" class="text-primary-emphasis text-decoration-none">{PHP.L.PFS}</a></li> <!-- Ссылка на личные файлы (PFS) с синим текстом "PFS" -->
							<!-- ENDIF -->
							<!-- IF {PHP|cot_module_active('files')} --> <!-- условие проверки функцией на статус активности модуля "files" -->
                            <li class="list-group-item"><a href="{PHP|cot_url('files','m=pfs')}" class="text-primary-emphasis text-decoration-none">{PHP.L.CleanCot_Files_Title}</a></li> <!-- Ссылка на личные файлы -->
							<!-- ENDIF -->
							<!-- IF {PHP|cot_plugin_active('whosonline')} --> <!-- Условие Cotonti: проверка активности плагина "whosonline" -->
                            <li class="list-group-item"><a href="{PHP|cot_url('plug','e=whosonline')}" class="text-primary-emphasis text-decoration-none">{PHP.L.CleanCot_WhosOnline}</a></li> <!-- Ссылка на "Кто онлайн" с синим текстом из языкового файла темы -->
							<!-- ENDIF -->
                        </ul> <!-- Закрытие списка -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки админ-блока -->
                <!-- ENDIF --> <!-- Конец условия для админ-блока -->

                <!-- Опросы --> <!-- Комментарий к блоку опросов -->
                <!-- IF {INDEX_POLLS} --> <!-- Условие Cotonti: проверка наличия опросов для вывода -->
                <div class="card mb-4"> <!-- Карточка Bootstrap с нижним отступом 4 -->
                    <div class="card-header bg-costum-dgrey text-white"> <!-- Заголовок карточки с тёмным фоном и белым текстом -->
                        <h2 class="h5 mb-0">{PHP.L.Polls}</h2> <!-- Заголовок 5 уровня без нижнего отступа с текстом "Опросы" из языкового файла -->
                    </div> <!-- Закрытие заголовка карточки -->
                    <div class="card-body"> <!-- Тело карточки -->
                        {INDEX_POLLS} <!-- Вывод блока опросов из Cotonti -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки опросов -->
                <!-- ENDIF --> <!-- Конец условия для опросов -->

                <!-- Облако тегов --> <!-- Комментарий к блоку облака тегов -->
                <!-- IF {INDEX_TAG_CLOUD} --> <!-- Условие Cotonti: проверка наличия облака тегов для вывода -->
                <div class="card mb-4"> <!-- Карточка Bootstrap с нижним отступом 4 -->
                    <div class="card-header bg-costum-dgrey text-white"> <!-- Заголовок карточки с тёмным фоном и белым текстом -->
                        <h2 class="h5 mb-0">{PHP.L.Tags}</h2> <!-- Заголовок 5 уровня без нижнего отступа с текстом "Теги" из языкового файла -->
                    </div> <!-- Закрытие заголовка карточки -->
                    <div class="card-body"> <!-- Тело карточки -->
                        {INDEX_TAG_CLOUD} <!-- Вывод облака тегов из Cotonti -->
                        <a href="{PHP|cot_url('plug','e=tags')}" class="btn btn-outline-primary">{PHP.L.tags_All}</a> <!-- Кнопка-ссылка на все теги с синим контуром и текстом "Все теги" -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки облака тегов -->
                <!-- ENDIF --> <!-- Конец условия для облака тегов -->

                <!-- Кто онлайн --> <!-- Комментарий к блоку "Кто онлайн" -->
                <!-- IF {PHP.out.whosonline} --> <!-- Условие Cotonti: проверка наличия данных о пользователях онлайн -->
                <div class="card mb-4"> <!-- Карточка Bootstrap с нижним отступом 4 -->
                    <div class="card-header bg-costum-dgrey text-white"> <!-- Заголовок карточки с тёмным фоном и белым текстом -->
                        <h2 class="h5 mb-0">{PHP.L.Online}</h2> <!-- Заголовок 5 уровня без нижнего отступа с текстом "Онлайн" из языкового файла -->
                    </div> <!-- Закрытие заголовка карточки -->
                    <div class="card-body"> <!-- Тело карточки -->
                        <a href="{PHP|cot_url('plug','e=whosonline')}" class="text-primary">{PHP.out.whosonline}</a> <!-- Ссылка на "Кто онлайн" с синим текстом и данными из Cotonti -->
                        <!-- IF {PHP.out.whosonline_reg_list} --> <!-- Условие Cotonti: проверка наличия списка зарегистрированных пользователей онлайн -->
                        <p class="mt-2 mb-0">{PHP.out.whosonline_reg_list}</p> <!-- Параграф со списком зарегистрированных пользователей с верхним отступом 2 -->
                        <!-- ENDIF --> <!-- Конец условия для списка зарегистрированных пользователей -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки "Кто онлайн" -->
                <!-- ENDIF --> <!-- Конец условия для "Кто онлайн" -->
            </div> <!-- Закрытие колонки сайдбара -->
        </div> <!-- Закрытие первой сетки -->

        <!-- Недавние элементы --> <!-- Комментарий к секции недавних элементов -->
        <!-- IF {PHP|cot_plugin_active('recentitems')} --> <!-- Условие Cotonti: проверка активности плагина "recentitems" -->
        <div class="row"> <!-- Новая сетка Bootstrap для размещения колонок -->
            <div class="col-12"> <!-- Колонка шириной 12/12 (полная ширина) -->
                <div class="card mb-5"> <!-- Карточка Bootstrap с нижним отступом 4 -->
                    <div class="card-header bg-primary-subtle"> <!-- Заголовок карточки с жёлтым фоном и тёмным текстом -->
                        <h2 class="h5 mb-0"><a href="{PHP|cot_url('plug','e=recentitems')}" class="text-primary-emphasis text-decoration-none">{PHP.L.recentitems_pages}</a></h2> <!-- Заголовок 5 уровня без отступа со ссылкой на "Недавние страницы" -->
                    </div> <!-- Закрытие заголовка карточки -->
                    <div class="card-body p-0"> <!-- Тело карточки без внутренних отступов -->
                        <!-- Недавние страницы --> <!-- Комментарий к блоку недавних страниц -->
                        <!-- IF {RECENT_PAGES} --> <!-- Условие Cotonti: проверка наличия недавних страниц -->
                        {RECENT_PAGES} <!-- Вывод списка недавних страниц из Cotonti -->
                        <!-- ELSE --> <!-- Альтернатива, если страниц нет -->
                        <div class="alert alert-warning mb-0">{PHP.L.recentitems_nonewpages}</div> <!-- Предупреждение Bootstrap с текстом "Нет новых страниц" -->
                        <!-- ENDIF --> <!-- Конец условия для недавних страниц -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки недавних страниц -->
				
                <div class="card mb-5"> <!-- Карточка Bootstrap с нижним отступом 4 -->
                    <div class="card-header card-header bg-primary-subtle"> <!-- Заголовок карточки с жёлтым фоном и тёмным текстом -->
                        <h2 class="h5 mb-0"><a href="{PHP|cot_url('plug','e=recentitems')}" class="text-primary-emphasis text-decoration-none">{PHP.L.recentitems_forums}</a></h2> <!-- Заголовок 5 уровня без отступа со ссылкой на "Недавние форумы" -->
                    </div> <!-- Закрытие заголовка карточки -->
                    <div class="card-body p-0"> <!-- Тело карточки без внутренних отступов -->
                        <!-- Недавние сообщения на форумах --> <!-- Комментарий к блоку недавних сообщений форумов -->
                        <!-- IF {RECENT_FORUMS} --> <!-- Условие Cotonti: проверка наличия недавних сообщений форумов -->
                        {RECENT_FORUMS} <!-- Вывод списка недавних сообщений форумов из Cotonti -->
                        <!-- ELSE --> <!-- Альтернатива, если сообщений нет -->
                        <div class="alert alert-warning mb-0 mt-3">{PHP.L.recentitems_nonewposts}</div> <!-- Предупреждение Bootstrap с текстом "Нет новых сообщений" и верхним отступом 3 -->
                        <!-- ENDIF --> <!-- Конец условия для недавних сообщений форумов -->
                    </div> <!-- Закрытие тела карточки -->
                </div> <!-- Закрытие карточки недавних форумов -->
            </div> <!-- Закрытие колонки полной ширины -->
        </div> <!-- Закрытие сетки недавних элементов -->
        <!-- ENDIF --> <!-- Конец условия для плагина "recentitems" -->
    </div> <!-- Закрытие контейнера -->
</main> <!-- Закрытие основного тега-контейнера -->

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие PHP.usr.maingrp == 5 - просмотр info для админов -->
<div class="container-xl">
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is end of the HTML template <code>index.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
</div>
<!-- ENDIF --> <!-- Конец условия просмотр info для админов -->
<!-- END: MAIN --> <!-- Конец основного блока шаблона Cotonti -->
