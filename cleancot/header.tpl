<!-- 
/********************************************************************************
 * File: header.tpl
 * Description: HTML template of the site header. We connect the necessary CSS/JS. Main navigation menu. User's personal account.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 01 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: HEADER --> <!-- Открывает основной блок шаблона для Cotonti -->
<!DOCTYPE html> <!-- Объявляет документ как HTML5 -->
<html lang="{PHP.cfg.defaultlang}"> <!-- Задаёт язык документа из конфигурации Cotonti -->
    <head> <!-- Открывает секцию метаданных и подключений -->
        <title>{HEADER_TITLE}</title> <!-- Устанавливает заголовок страницы из переменной Cotonti -->
        <!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF --> <!-- Условно добавляет мета-описание, если оно задано -->
        <!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF --> <!-- Условно добавляет ключевые слова, если они заданы -->
        <meta charset="utf-8" /> <!-- Устанавливает кодировку UTF-8 -->
        <meta name="viewport" content="width=device-width, initial-scale=1" /> <!-- Задаёт адаптивность для мобильных устройств -->
        <meta name="generator" content="Cotonti https://www.cotonti.com" /> <!-- Указывает, что сайт создан на Cotonti -->
        <!-- IF {HEADER_CANONICAL_URL} --><link rel="canonical" href="{HEADER_CANONICAL_URL}" /><!-- ENDIF --> <!-- Условно добавляет канонический URL, если он задан -->
        {HEADER_BASEHREF} <!-- Вставляет базовый URL из Cotonti -->
        {HEADER_HEAD} <!-- Вставляет дополнительные элементы head из системы (CSS, JS и т.д.) -->
        <link rel="shortcut icon" href="favicon.ico" /> <!-- Подключает классическую иконку сайта в формате ICO -->
        <link rel="icon" href="{PHP.cfg.themes_dir}/{PHP.theme}/img/favicon.svg" type="image/svg+xml"> <!-- Подключает SVG-иконку из папки темы -->
        <link rel="apple-touch-icon" href="apple-touch-icon.png" /> <!-- Подключает иконку для устройств Apple -->
    </head> <!-- Закрывает секцию метаданных -->
    <body> <!-- Открывает тело документа -->
        <header class="bg-costum-dgrey text-white shadow-bottom"> <!-- Открывает хедер с кастомным тёмно-серым фоном, белым текстом и тенью снизу -->
            <!-- Первый ярус --> <!-- Комментарий для обозначения верхнего уровня хедера -->
            <div class="container-xl py-2"> <!-- Контейнер Bootstrap с увеличенной шириной и отступами сверху/снизу -->
                <div class="row align-items-center"> <!-- Строка Bootstrap для выравнивания элементов по центру -->
                    <!-- Заголовок (70% на ноутбуках) --> <!-- Комментарий для левой части с заголовком -->
                    <div class="col-12 col-lg-8 d-flex align-items-center"> <!-- Колонка: 100% на мобильных, 8/12 на ноутбуках, с flex-выравниванием -->
                        <button class="navbar-toggler me-2 d-lg-none p-1" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarOffcanvas" aria-controls="navbarOffcanvas" aria-label="Toggle navigation"> <!-- Кнопка бургер-меню для мобильных, скрыта на больших экранах -->
                            <i class="fa-solid fa-bars fa-xl me-2"></i> <!-- Иконка бургера из Font Awesome -->
                        </button> <!-- Закрывает кнопку бургер-меню -->
                        <a href="{PHP.cfg.mainurl}" class="text-white text-decoration-none d-block"> <!-- Ссылка на главную страницу с белым текстом без подчёркивания -->
                            <h1 class="h4 mb-0">{PHP.cfg.maintitle}</h1> <!-- Заголовок сайта размером h4 без нижнего отступа -->
                            <small class="fs-6 text-costum-light-grey d-block mt-1 d-none d-md-inline">{PHP.cfg.subtitle}</small> <!-- Подзаголовок мелким шрифтом, скрыт на маленьких экранах -->
                        </a> <!-- Закрывает ссылку на главную -->
                    </div> <!-- Закрывает колонку с заголовком -->
                    <!-- Локализация, поиск, кнопка аккаунта (30% на ноутбуках) --> <!-- Комментарий для правой части -->
                    <div class="col-12 col-lg-4 d-flex justify-content-between justify-content-lg-end align-items-center mt-3 mt-lg-0"> <!-- Колонка: 100% на мобильных, 4/12 на ноутбуках, с flex-выравниванием -->
                        <!-- Локализация --> <!-- Комментарий для блока локализации -->
                        <div class="me-3"> <!-- Контейнер для флагов с правым отступом -->
                            <!-- BEGIN: I18N_LANG --> <!-- Открывает цикл для вывода языков -->
                                <!-- BEGIN: I18N_LANG_ROW --> <!-- Открывает строку для каждого языка -->
                                    <a href="{I18N_LANG_ROW_URL}" class="{I18N_LANG_ROW_CLASS} me-1"><img src="images/flags/{I18N_LANG_ROW_FLAG}.png" alt="{I18N_LANG_ROW_FLAG}" /></a> <!-- Ссылка на язык с флагом и классом -->
                                <!-- END: I18N_LANG_ROW --> <!-- Закрывает строку языка -->
                            <!-- END: I18N_LANG --> <!-- Закрывает цикл языков -->
                        </div> <!-- Закрывает контейнер локализации -->
                        <!-- Поиск --> <!-- Комментарий для блока поиска -->
                        <div class="me-3"> <!-- Контейнер для кнопки поиска с правым отступом -->
                            <button class="btn text-white" data-bs-toggle="modal" data-bs-target="#searchModal" title="{PHP.L.Search}"> <!-- Кнопка открытия модального окна поиска -->
                                <i class="fa-solid fa-magnifying-glass fa-lg"></i> <!-- Иконка лупы из Font Awesome -->
                            </button> <!-- Закрывает кнопку поиска -->
                        </div> <!-- Закрывает контейнер поиска -->
                        <!-- Кнопка для правого Offcanvas --> <!-- Комментарий для кнопки аккаунта -->
                        <!-- BEGIN: GUEST --> <!-- Условие для неавторизованных пользователей -->
                            <div> <!-- Контейнер для кнопки -->
                                <button class="btn text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#accountOffcanvas" aria-controls="accountOffcanvas" title="{PHP.L.Account}"> <!-- Кнопка открытия правого Offcanvas -->
                                    <i class="fa-solid fa-user fa-lg"></i> <!-- Иконка пользователя из Font Awesome -->
                                </button> <!-- Закрывает кнопку -->
                            </div> <!-- Закрывает контейнер кнопки -->
                            <!-- Правый Offcanvas для аккаунта --> <!-- Комментарий для бокового меню -->
                            <div class="offcanvas offcanvas-end bg-costum-dgrey text-white" tabindex="-1" id="accountOffcanvas" aria-labelledby="accountOffcanvasLabel"> <!-- Offcanvas-контейнер с правым открытием -->
                                <div class="offcanvas-header"> <!-- Заголовок Offcanvas -->
                                    <h5 class="offcanvas-title" id="accountOffcanvasLabel">{PHP.L.Account}</h5> <!-- Заголовок "Аккаунт" -->
                                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button> <!-- Кнопка закрытия Offcanvas -->
                                </div> <!-- Закрывает заголовок Offcanvas -->
                                <div class="offcanvas-body"> <!-- Тело Offcanvas -->
                                    <ul class="navbar-nav"> <!-- Список навигации -->
                                        <li class="nav-item"> <!-- Элемент списка -->
                                            <a class="nav-link" href="{PHP|cot_url('login')}"> <!-- Ссылка на страницу входа -->
                                                <i class="fa-solid fa-right-to-bracket me-1"></i> {PHP.L.Login} <!-- Иконка и текст "Войти" -->
                                            </a> <!-- Закрывает ссылку -->
                                        </li> <!-- Закрывает элемент списка -->
                                        <li class="nav-item"> <!-- Элемент списка -->
                                            <a class="nav-link" href="{PHP|cot_url('users','m=register')}"> <!-- Ссылка на страницу регистрации -->
                                                <i class="fa-solid fa-user-plus me-1"></i> {PHP.L.Register} <!-- Иконка и текст "Регистрация" -->
                                            </a> <!-- Закрывает ссылку -->
                                        </li> <!-- Закрывает элемент списка -->
                                        <li class="nav-item"> <!-- Элемент списка -->
                                            <a class="nav-link" href="{PHP|cot_url('users','m=passrecover')}"> <!-- Ссылка на восстановление пароля -->
                                                <i class="fa-solid fa-key me-1"></i> {PHP.L.users_lostpass} <!-- Иконка и текст "Восстановить пароль" -->
                                            </a> <!-- Закрывает ссылку -->
                                        </li> <!-- Закрывает элемент списка -->
                                    </ul> <!-- Закрывает список навигации -->
                                </div> <!-- Закрывает тело Offcanvas -->
                            </div> <!-- Закрывает Offcanvas -->
                        <!-- END: GUEST --> <!-- Закрывает условие для гостей -->
                        <!-- BEGIN: USER --> <!-- Условие для авторизованных пользователей -->
                            <div> <!-- Контейнер для кнопки -->
                                <button class="btn text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#accountUserOffcanvas" aria-controls="accountOffcanvas" title="{PHP.L.Account}"> <!-- Кнопка открытия правого Offcanvas -->
                                    <!-- IF {PHP|cot_plugin_active('userimages')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен плагин userimages, но не активен модуль files -->
                                        <!-- IF {PHP.usr.profile.user_avatar} --> <!-- Условие: у пользователя есть аватар -->
                                            <img class="rounded-circle me-2" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Аватар пользователя -->
                                        <!-- ELSE --> <!-- Условие: аватара нет -->
                                            <img class="rounded-circle me-2" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Дефолтный аватар -->
                                        <!-- ENDIF --> <!-- Закрывает условие наличия аватара -->
                                    <!-- ELSE --> <!-- Условие: другие случаи обработки аватара -->
                                        <img class="rounded-circle me-2" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Дефолтный аватар -->
                                    <!-- ENDIF --> <!-- Закрывает условие проверки модулей -->
                                </button> <!-- Закрывает кнопку -->
                            </div> <!-- Закрывает контейнер кнопки -->
                            <!-- Правый Offcanvas для аккаунта --> <!-- Комментарий для бокового меню -->
                            <div class="offcanvas offcanvas-end bg-costum-dblue text-white" tabindex="-1" id="accountUserOffcanvas" aria-labelledby="accountOffcanvasLabel"> <!-- Offcanvas-контейнер с правым открытием и тёмно-синим фоном -->
                                <div class="offcanvas-header"> <!-- Заголовок Offcanvas -->
                                    <h5 class="offcanvas-title" id="accountOffcanvasLabel">{PHP.L.Account}</h5> <!-- Заголовок "Аккаунт" -->
                                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button> <!-- Кнопка закрытия Offcanvas -->
                                </div> <!-- Закрывает заголовок Offcanvas -->
                                <div class="offcanvas-body"> <!-- Тело Offcanvas -->
                                    <ul class="navbar-nav"> <!-- Список навигации -->
                                        <li class="nav-item d-flex align-items-center mb-3"> <!-- Элемент списка с flex-выравниванием и нижним отступом -->
                                            <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} --> <!-- Условие: активен модуль files, но не активен userimages -->
                                                <!-- IF {PHP.usr.profile.user_avatar} --> <!-- Условие: у пользователя есть аватар -->
                                                    <img class="rounded-circle me-2" src="{PHP.usr.profile.user_avatar|cot_filesUserAvatarUrl($this)}" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Аватар через модуль files -->
                                                <!-- ELSE --> <!-- Условие: аватара нет -->
                                                    <img class="rounded-circle me-2" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Дефолтный аватар -->
                                                <!-- ENDIF --> <!-- Закрывает условие наличия аватара -->
                                            <!-- ENDIF --> <!-- Закрывает условие модуля files -->
                                            <!-- IF {PHP|cot_plugin_active('userimages')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен userimages, но не активен files -->
                                                <!-- IF {PHP.usr.profile.user_avatar} --> <!-- Условие: у пользователя есть аватар -->
                                                    <img class="rounded-circle me-2" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Аватар через плагин userimages -->
                                                <!-- ELSE --> <!-- Условие: аватара нет -->
                                                    <img class="rounded-circle me-2" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Дефолтный аватар -->
                                                <!-- ENDIF --> <!-- Закрывает условие наличия аватара -->
                                            <!-- ELSE --> <!-- Условие: другие случаи -->
                                                <img class="rounded-circle me-2" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp" alt="{PHP.usr.name}" width="40" height="40" style="object-fit: cover;" /> <!-- Дефолтный аватар -->
                                            <!-- ENDIF --> <!-- Закрывает условие проверки модулей -->
                                            <span>{PHP.usr.name}</span> <!-- Имя пользователя -->
                                        </li> <!-- Закрывает элемент списка с аватаром -->
                                        <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: пользователь — администратор -->
                                            <li class="nav-item"> <!-- Элемент списка -->
                                                <a class="nav-link" href="{PHP|cot_url('admin')}"> <!-- Ссылка на админ-панель -->
                                                    <i class="fa-solid fa-user-shield me-1"></i> {PHP.L.Adminpanel} <!-- Иконка и текст "Админ-панель" -->
                                                </a> <!-- Закрывает ссылку -->
                                            </li> <!-- Закрывает элемент списка -->
                                        <!-- ENDIF --> <!-- Закрывает условие администратора -->
                                        <li class="nav-item"> <!-- Элемент списка -->
                                            <a class="nav-link" href="{PHP.usr.name|cot_url('users', 'm=details&u=$this')}"> <!-- Ссылка на профиль пользователя -->
                                                <i class="fa-solid fa-user me-1"></i> {PHP.L.users_myProfile} <!-- Иконка и текст "Мой профиль" -->
                                            </a> <!-- Закрывает ссылку -->
                                        </li> <!-- Закрывает элемент списка -->
                                        <li class="nav-item"> <!-- Элемент списка -->
                                            <a class="nav-link" href="{PHP|cot_url('users','m=profile')}"> <!-- Ссылка на настройки профиля -->
                                                <i class="fa-solid fa-user-gear me-1"></i> {PHP.L.Profile} <!-- Иконка и текст "Профиль" -->
                                            </a> <!-- Закрывает ссылку -->
                                        </li> <!-- Закрывает элемент списка -->
                                        <!-- IF {PHP|cot_module_active('pm')} --> <!-- Условие: активен модуль личных сообщений -->
                                            <li class="nav-item"><span class="nav-link">{HEADER_USER_PMREMINDER}</span></li> <!-- Вывод уведомлений о личных сообщениях -->
                                        <!-- ENDIF --> <!-- Закрывает условие модуля PM -->
                                        <!-- IF {PHP|cot_module_active('pfs')} --> <!-- Условие: активен модуль персональных файлов -->
                                            <li class="nav-item"> <!-- Элемент списка -->
                                                <a class="nav-link" href="{PHP|cot_url('pfs')}"> <!-- Ссылка на персональные файлы -->
                                                    <i class="fa-solid fa-folder-open me-1"></i> {PHP.L.PFS} <!-- Иконка и текст "PFS" -->
                                                </a> <!-- Закрывает ссылку -->
                                            </li> <!-- Закрывает элемент списка -->
                                        <!-- ENDIF --> <!-- Закрывает условие модуля PFS -->
                                        <!-- IF {PHP.out.notices} --> <!-- Условие: есть уведомления -->
                                            <li class="nav-item"><span class="nav-link">{PHP.out.notices}</span></li> <!-- Вывод уведомлений -->
                                        <!-- ENDIF --> <!-- Закрывает условие уведомлений -->
                                        <li class="nav-item"> <!-- Элемент списка -->
                                            <a class="nav-link" href="{HEADER_USER_LOGINOUT_URL}"> <!-- Ссылка на выход -->
                                                <i class="fa-solid fa-right-from-bracket me-1"></i> {PHP.L.Logout} <!-- Иконка и текст "Выйти" -->
                                            </a> <!-- Закрывает ссылку -->
                                        </li> <!-- Закрывает элемент списка -->
                                    </ul> <!-- Закрывает список навигации -->
                                </div> <!-- Закрывает тело Offcanvas -->
                            </div> <!-- Закрывает Offcanvas -->
                        <!-- END: USER --> <!-- Закрывает условие для авторизованных -->
                    </div> <!-- Закрывает колонку с локализацией, поиском и аккаунтом -->
                </div> <!-- Закрывает строку Bootstrap -->
            </div> <!-- Закрывает контейнер первого яруса -->
            
            <div class="border border-secondary d-none d-md-block"></div> <!-- Разделительная линия, видна только на средних и больших экранах -->
            
            <!-- Второй ярус: Navbar с Offcanvas слева --> <!-- Комментарий для нижнего уровня хедера -->
            <nav class="navbar navbar-expand-lg py-0 bg-costum-dblue"> <!-- Навигационная панель с раскрытием на больших экранах и тёмно-синим фоном -->
                <div class="container-xl"> <!-- Контейнер Bootstrap с увеличенной шириной -->
                    <div class="offcanvas offcanvas-start bg-costum-dblue text-white" tabindex="-1" id="navbarOffcanvas" aria-labelledby="navbarOffcanvasLabel"> <!-- Offcanvas-контейнер с левым открытием -->
                        <div class="offcanvas-header"> <!-- Заголовок Offcanvas -->
                            <h5 class="offcanvas-title text-white" id="navbarOffcanvasLabel">{PHP.L.Navigation}</h5> <!-- Заголовок "Навигация" -->
                            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button> <!-- Кнопка закрытия Offcanvas -->
                        </div> <!-- Закрывает заголовок Offcanvas -->
                        <div class="offcanvas-body py-2"> <!-- Тело Offcanvas с отступами -->
                            <ul class="navbar-nav text-white mb-2 mb-md-0"> <!-- Список навигации с белым текстом -->
                                <li class="nav-item"> <!-- Элемент списка -->
                                    <a class="nav-link" href="{PHP.cfg.mainurl}" title="{PHP.L.Home}"> <!-- Ссылка на главную страницу -->
                                        <i class="fa-solid fa-house me-1"></i> {PHP.L.Home} <!-- Иконка и текст "Главная" -->
                                    </a> <!-- Закрывает ссылку -->
                                </li> <!-- Закрывает элемент списка -->
                                <!-- Двухуровневое выпадающее меню --> <!-- для редактирования ссылок смотреть файл, который подключается в строке ниже -->
                                {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/two-level-drop-down-menu-publications.tpl"} <!-- Подключает файл с двухуровневым меню -->
                                <!-- IF {PHP|cot_module_active('forums')} --> <!-- Условие: активен модуль форумов -->
                                    <li class="nav-item"> <!-- Элемент списка -->
                                        <a class="nav-link" href="{PHP|cot_url('forums')}" title="{PHP.L.Forums}"> <!-- Ссылка на форумы -->
                                            <i class="fa-solid fa-comments me-1"></i> {PHP.L.Forums} <!-- Иконка и текст "Форумы" -->
                                        </a> <!-- Закрывает ссылку -->
                                    </li> <!-- Закрывает элемент списка -->
                                <!-- ENDIF --> <!-- Закрывает условие форумов -->
                                <!-- IF {PHP.structure.page.news.path} --> <!-- Условие: существует категория новостей -->
                                    <li class="nav-item"> <!-- Элемент списка -->
                                        <a class="nav-link" href="{PHP|cot_url('page','c=news')}" title="{PHP.structure.page.news.title}"> <!-- Ссылка на новости -->
                                            <i class="fa-solid fa-newspaper me-1"></i> <!-- Иконка газеты -->
                                            <!-- IF {PHP.cfg.defaultlang} === {PHP.lang} --> <!-- Условие: текущий язык — дефолтный -->
                                                {PHP.structure.page.news.title} <!-- Заголовок категории новостей -->
                                            <!-- ELSE --> <!-- Условие: другой язык -->
                                                <!-- IF {PHP.i18n_structure.news.en.title} --> <!-- Условие: есть перевод на английский -->
                                                    {PHP.i18n_structure.news.en.title} <!-- Английский заголовок новостей -->
                                                <!-- ELSE --> <!-- Условие: перевода нет -->
                                                    {PHP.L.News} <!-- Дефолтный текст "Новости" -->
                                                <!-- ENDIF --> <!-- Закрывает условие перевода -->
                                            <!-- ENDIF --> <!-- Закрывает условие языка -->
                                        </a> <!-- Закрывает ссылку -->
                                    </li> <!-- Закрывает элемент списка -->
                                <!-- ENDIF --> <!-- Закрывает условие новостей -->
                                <!-- IF {PHP|cot_plugin_active('userarticles')} --> <!-- Условие: активен плагин userarticles -->
                                    <li class="nav-item"> <!-- Элемент списка -->
                                        <a class="nav-link" href="{PHP|cot_url('plug', 'e=userarticles')}" title="{PHP.L.userarticles_title}"> <!-- Ссылка на пользовательские статьи -->
                                            <i class="fa-solid fa-file-lines me-1"></i> {PHP.L.userarticles_title} <!-- Иконка и текст "Статьи" -->
                                        </a> <!-- Закрывает ссылку -->
                                    </li> <!-- Закрывает элемент списка -->
                                <!-- ENDIF --> <!-- Закрывает условие userarticles -->
                                <!-- IF {PHP|cot_plugin_active('recentitems')} --> <!-- Условие: активен плагин recentitems -->
                                    <li class="nav-item"> <!-- Элемент списка -->
                                        <a class="nav-link" href="{PHP|cot_url('plug', 'e=recentitems')}" title="{PHP.L.recentitems_title}"> <!-- Ссылка на последние элементы -->
                                            <i class="fa-regular fa-calendar-check"></i> {PHP.L.recentitems_title} <!-- Иконка и текст "Недавнее" -->
                                        </a> <!-- Закрывает ссылку -->
                                    </li> <!-- Закрывает элемент списка -->
                                <!-- ENDIF --> <!-- Закрывает условие recentitems -->
                                <!-- Двухуровневое выпадающее меню --> <!-- Комментарий для подключения подменю -->
                                {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/two-level-drop-down-menu.tpl"} 
								<!-- Подключает файл с двухуровневым меню -->
                            </ul> <!-- Закрывает список навигации -->
                        </div> <!-- Закрывает тело Offcanvas -->
                    </div> <!-- Закрывает Offcanvas -->
                </div> <!-- Закрывает контейнер второго яруса -->
            </nav> <!-- Закрывает навигационную панель -->
            <div class="border border-secondary d-none d-md-block"></div> <!-- Разделительная линия, видна только на средних и больших экранах -->
        </header> <!-- Закрывает хедер -->
    
<!-- END: HEADER --> <!-- Закрывает основной блок шаблона -->