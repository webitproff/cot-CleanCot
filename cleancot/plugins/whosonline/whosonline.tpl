<!-- 
/********************************************************************************
 * File: whosonline.tpl
 * Extention: plugin 'whosonline'
 * Description: HTML template of the whosonline plugin, which displays which users on the site are online, including guests.
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
<!-- Начало основного блока шаблона Cotonti -->
<!-- BEGIN: MAIN -->
    <!-- Верхняя панель с фоном и границей -->
    <div class="bg-light py-2 border-bottom border-secondary">
        <!-- Контейнер для навигации в Cotonti -->
        <div class="container py-2">
            <!-- Навигация с хлебными крошками в стиле Bootstrap -->
            <nav aria-label="breadcrumb">
                <!-- Список хлебных крошек с названием "Кто онлайн" из локации (окружения) Cotonti -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{PHP.L.WhosOnline}</ol>
            </nav>
        </div>
    </div>
    <!-- Основной контейнер с отступами -->
    <div class="py-4">
        <!-- Контейнер Cotonti с минимальной высотой и гибким расположением -->
        <div class="container-xl min-height-50vh d-flex flex-column pb-5">
            <!-- Строка для сетки Bootstrap -->
            <div class="row">
                <!-- Колонка на всю ширину -->
                <div class="col-12">
                    <!-- Контейнер списка пользователей в стиле Bootstrap -->
                    <div class="list-group mb-3">
                        <!-- Заголовок таблицы в стиле списка с тёмным фоном -->
                        <div class="list-group-item list-group-item-dark">
                            <!-- Сетка Bootstrap для заголовков с выравниванием -->
                            <div class="row align-items-center fw-bold">
                                <!-- Колонка "Пользователь" из локации (окружения) Cotonti -->
                                <div class="col-12 col-md-2">{PHP.L.User}</div>
                                <!-- Колонка "Группа" из локации (окружения) Cotonti -->
                                <div class="col-12 col-md-2">{PHP.L.Group}</div>
                                <!-- Колонка "Тип" из локации (окружения) Cotonti -->
                                <div class="col-12 col-md-1">{PHP.L.Type}</div>
                                <!-- Колонка "Местоположение" из локации (окружения) Cotonti -->
                                <div class="col-12 col-md-3">{PHP.L.Location}</div>
                                <!-- Колонка "Последний раз" из локации (окружения) Cotonti -->
                                <div class="col-12 col-md-2">{PHP.L.LastSeen}</div>
                                <!-- Условие Cotonti: показывать IP только админам -->
                                <!-- IF {PHP.usr.isadmin} -->
                                    <!-- Колонка "IP" из локации (окружения) Cotonti, видна только админам -->
                                    <div class="col-12 col-md-2">{PHP.L.Ip}</div>
                                <!-- Конец условия для админов в Cotonti -->
                                <!-- ENDIF -->
                            </div>
                        </div>

                        <!-- Начало цикла вывода зарегистрированных пользователей в Cotonti -->
                        <!-- BEGIN: USERS -->
                            <!-- Элемент списка для каждого пользователя -->
                            <div class="list-group-item">
                                <!-- Сетка Bootstrap для данных пользователя -->
                                <div class="row align-items-center">
                                    <!-- Колонка с ссылкой на профиль пользователя из Cotonti -->
                                    <div class="col-12 col-md-2">{USER_LINK}</div>
                                    <!-- Колонка с основной группой пользователя из Cotonti -->
                                    <div class="col-12 col-md-2">{USER_MAIN_GROUP}</div>
                                    <!-- Колонка с типом или локацией пользователя -->
                                    <div class="col-12 col-md-1">
                                        <!-- Условие Cotonti: ссылка на локацию для админов, если URL есть -->
                                        <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --><a href="{USER_URL}"><!-- ENDIF -->
                                            <!-- Вывод типа или локации пользователя из Cotonti -->
                                            {USER_LOCATION}
                                        <!-- Закрытие ссылки для админов, если она была открыта -->
                                        <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --></a><!-- ENDIF -->
                                    </div>
                                    <!-- Колонка с дополнительной локацией -->
                                    <div class="col-12 col-md-3">
                                        <!-- Условие Cotonti: если есть дополнительная локация -->
                                        <!-- IF {USER_SUBLOCATION} -->
                                            <!-- Ссылка для админов, если URL доступен -->
                                            <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --><a href="{USER_URL}"><!-- ENDIF -->
                                                <!-- Вывод дополнительной локации из Cotonti -->
                                                {USER_SUBLOCATION}
                                            <!-- Закрытие ссылки для админов, если она была -->
                                            <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --></a><!-- ENDIF -->
                                        <!-- Конец условия для дополнительной локации -->
                                        <!-- ENDIF -->
                                    </div>
                                    <!-- Колонка с временем последнего визита из Cotonti -->
                                    <div class="col-12 col-md-2">{USER_LASTSEEN} {PHP.L.Ago}</div>
                                    <!-- Условие Cotonti: показ IP только админам -->
                                    <!-- IF {PHP.usr.isadmin} -->
                                        <!-- Колонка с IP пользователя из Cotonti -->
                                        <div class="col-12 col-md-2">{USER_IP}</div>
                                    <!-- Конец условия для админов -->
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        <!-- Конец цикла пользователей в Cotonti -->
                        <!-- END: USERS -->

                        <!-- Начало цикла вывода гостей в Cotonti -->
                        <!-- BEGIN: GUESTS -->
                            <!-- Элемент списка для каждого гостя -->
                            <div class="list-group-item">
                                <!-- Сетка Bootstrap для данных гостя -->
                                <div class="row align-items-center">
                                    <!-- Колонка с номером гостя из локации (окружения) Cotonti -->
                                    <div class="col-12 col-md-2">{PHP.L.Guest} #{GUEST_NUMBER}</div>
                                    <!-- Пустая колонка для выравнивания (группа у гостей не нужна) -->
                                    <div class="col-12 col-md-2"></div>
                                    <!-- Колонка с типом или локацией гостя -->
                                    <div class="col-12 col-md-1">
                                        <!-- Условие Cotonti: ссылка для админов, если URL есть -->
                                        <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --><a href="{GUEST_URL}"><!-- ENDIF -->
                                            <!-- Вывод локации гостя из Cotonti -->
                                            {GUEST_LOCATION}
                                        <!-- Закрытие ссылки для админов, если она была -->
                                        <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --></a><!-- ENDIF -->
                                    </div>
                                    <!-- Колонка с дополнительной локацией гостя -->
                                    <div class="col-12 col-md-3">
                                        <!-- Условие Cotonti: если есть дополнительная локация -->
                                        <!-- IF {GUEST_SUBLOCATION} -->
                                            <!-- Ссылка для админов, если URL доступен -->
                                            <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --><a href="{GUEST_URL}"><!-- ENDIF -->
                                                <!-- Вывод дополнительной локации гостя из Cotonti -->
                                                {GUEST_SUBLOCATION}
                                            <!-- Закрытие ссылки для админов, если она была -->
                                            <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --></a><!-- ENDIF -->
                                        <!-- Конец условия для дополнительной локации -->
                                        <!-- ENDIF -->
                                    </div>
                                    <!-- Колонка с временем последнего визита гостя из Cotonti -->
                                    <div class="col-12 col-md-2">{GUEST_LASTSEEN} {PHP.L.Ago}</div>
                                    <!-- Условие Cotonti: показ IP только админам -->
                                    <!-- IF {PHP.usr.isadmin} -->
                                        <!-- Колонка с IP гостя из Cotonti -->
                                        <div class="col-12 col-md-2">{GUEST_IP}</div>
                                    <!-- Конец условия для админов -->
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        <!-- Конец цикла гостей в Cotonti -->
                        <!-- END: GUESTS -->
                    </div>

                    <!-- Условие Cotonti: показ пагинации, если страниц больше одной -->
                    <!-- IF {TOTAL_PAGES} > 1 -->
                        <!-- Навигация пагинации в стиле Bootstrap -->
                        <nav aria-label="Pagination" class="mb-3">
                            <!-- Информация о текущей странице из Cotonti -->
                            <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
                            <!-- Список пагинации в стиле Bootstrap -->
                            <ul class="pagination justify-content-center">
                                <!-- Ссылка на предыдущую страницу из Cotonti -->
                                {PREVIOUS_PAGE}
                                <!-- Элементы пагинации из Cotonti -->
                                {PAGINATION}
                                <!-- Ссылка на следующую страницу из Cotonti -->
                                {NEXT_PAGE}
                            </ul>
                        </nav>
                    <!-- Конец условия для пагинации -->
                    <!-- ENDIF -->

                    <!-- Параграф с текущей статистикой онлайн из Cotonti -->
                    <p class="mb-2">
                        <!-- Заголовок "Сейчас онлайн" из локации (окружения) Cotonti -->
                        <strong>{PHP.L.NowOnline}:</strong> {STAT_COUNT_USERS} {USERS}
                        <!-- Условие Cotonti: показ гостей, если не отключены в настройках плагина -->
                        <!-- IF !{PHP.cfg.plugin.whosonline.disable_guests} -->, {STAT_COUNT_GUESTS} {GUESTS}<!-- ENDIF -->
                    </p>
                    <!-- Условие Cotonti: показ максимального числа пользователей онлайн -->
                    <!-- IF {STAT_MAXUSERS} -->
                        <!-- Параграф с максимальной статистикой из Cotonti -->
                        <p class="mb-0">
                            <!-- Заголовок "Больше всего онлайн" из локации (окружения) Cotonti -->
                            <strong>{PHP.L.MostOnline}:</strong> {STAT_MAXUSERS}
                        </p>
                    <!-- Конец условия для максимальной статистики -->
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
    </div>
    <!-- Назначение блока: уведомление для администратора -->
    <!-- This is the name of the template for informing the administrator -->
    <!-- Условие Cotonti: показ уведомления только админам (группа 5) -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <!-- Контейнер для уведомления в стиле Bootstrap -->
        <div class="container-xl">
            <!-- Блок предупреждения для админов в Cotonti -->
            <div class="alert alert-warning" role="alert">
                <!-- Текст уведомления с именем админа и названием шаблона -->
                <strong>{PHP.usr  <!-- Имя текущего пользователя из Cotonti -->usr.name}</strong>, This is the HTML template <code>whosonline.tpl</code>
            </div>
        </div>
    <!-- Конец условия для админов -->
    <!-- ENDIF -->
<!-- Конец основного блока шаблона Cotonti -->
<!-- END: MAIN -->