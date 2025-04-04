<!-- 
/********************************************************************************
 * File: page.list.tpl
 * Extention: module 'page'
 * Description: HTML template for list of articles and news.
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

    <!-- Контейнер хлебных крошек с светлым фоном и синей нижней границей -->
    <div class="bg-light py-2 border-bottom border-primary">
        <!-- Внутренний контейнер Bootstrap с вертикальными отступами -->
        <div class="container py-2">
            <!-- Навигация для хлебных крошек с ARIA-меткой в стиле Bootstrap -->
            <nav aria-label="breadcrumb">
                <!-- Список хлебных крошек из Cotonti без нижнего отступа, с горизонтальной прокруткой -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{LIST_BREADCRUMBS}</ol>
            </nav>
        </div>
    </div>

    <!-- Контейнер средней ширины с flex-выравниванием и нижним отступом в Cotonti -->
    <div class="container-md d-flex flex-column justify-content-center pb-5">
        <!-- Подключение шаблона предупреждений из текущей темы Cotonti -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <!-- Сетка Bootstrap для размещения контента -->
        <div class="row">
            <!-- Колонка основного контента: 100% на малых экранах, 8/12 с автоцентрированием на средних -->
            <div class="col-12 col-md-8 mx-auto pt-4">
                <!-- Начало цикла вывода категорий в Cotonti -->
                <!-- BEGIN: LIST_CAT_ROW -->
                    <!-- Контейнер категории с нижним отступом в стиле Bootstrap -->
                    <div class="mb-3">
                        <!-- Заголовок категории размером h5 -->
                        <h3 class="h5">
                            <!-- Ссылка на категорию с названием и количеством записей из Cotonti -->
                            <a href="{LIST_CAT_ROW_URL}" title="{LIST_CAT_ROW_TITLE}">{LIST_CAT_ROW_TITLE}</a> ({LIST_CAT_ROW_COUNT})
                        </h3>
                        <!-- Условие Cotonti: отображение описания категории, если оно есть -->
                        <!-- IF {LIST_CAT_ROW_DESCRIPTION} -->
                            <!-- Описание категории мелким шрифтом без нижнего отступа -->
                            <p class="small mb-0">{LIST_CAT_ROW_DESCRIPTION}</p>
                        <!-- Конец условия описания категории -->
                        <!-- ENDIF -->
                    </div>
                <!-- Конец цикла категорий в Cotonti -->
                <!-- END: LIST_CAT_ROW -->

                <!-- Условие Cotonti: отображение пагинации категорий, если она активна -->
                <!-- IF {LIST_CAT_PAGINATION} -->
                    <!-- Навигация пагинации категорий с ARIA-меткой в стиле Bootstrap -->
                    <nav aria-label="Category Pagination" class="mb-3">
                        <!-- Информация о текущей странице и общем числе страниц из Cotonti -->
                        <div class="text-center mb-2">{PHP.L.Page} {LIST_CAT_CURRENT_PAGE} {PHP.L.Of} {LIST_CAT_TOTAL_PAGES}</div>
                        <!-- Список пагинации с выравниванием по центру в стиле Bootstrap -->
                        <ul class="pagination justify-content-center">{LIST_CAT_PREVIOUS_PAGE} {LIST_CAT_PAGINATION} {LIST_CAT_NEXT_PAGE}</ul>
                    </nav>
                <!-- Конец условия пагинации категорий -->
                <!-- ENDIF -->

                <!-- Начало цикла вывода записей в Cotonti -->
                <!-- BEGIN: LIST_ROW -->
                    <!-- Карточка записи с нижним отступом в стиле Bootstrap -->
                    <div class="card mb-3">
                        <!-- Сетка Bootstrap без отступов с выравниванием по высоте -->
                        <div class="row g-0 align-items-stretch">
                            <!-- Колонка изображения: 4/12 на средних экранах, flex-контейнер -->
                            <div class="col-md-4 d-flex">
                                <!-- Ссылка на запись без подчёркивания, растягивается на всю ширину -->
                                <a href="{LIST_ROW_URL}" class="text-decoration-none flex-grow-1" title="{LIST_ROW_TITLE}">
                                    <!-- Условие Cotonti: проверка наличия главного изображения -->
                                    <!-- IF {LIST_ROW_LINK_MAIN_IMAGE} -->
                                        <!-- Главное изображение записи из Cotonti, адаптивное с обрезкой -->
                                        <img src="{LIST_ROW_LINK_MAIN_IMAGE}" alt="{LIST_ROW_TITLE}" class="img-fluid card-image-dynamic object-fit-cover h-100 w-100">
                                    <!-- Альтернатива: если главного изображения нет -->
                                    <!-- ELSE -->
                                        <!-- Дефолтное изображение из темы Cotonti -->
                                        <img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cotonti-cleancot.webp" alt="{LIST_ROW_TITLE}" class="img-fluid card-image-dynamic object-fit-cover h-100 w-100">
                                    <!-- Конец условия изображения -->
                                    <!-- ENDIF -->
                                </a>
                            </div>
                            <!-- Колонка текста: 8/12 на средних экранах -->
                            <div class="col-md-8">
                                <!-- Тело карточки с относительным позиционированием в стиле Bootstrap -->
                                <div class="card-body position-relative">
                                    <!-- Заголовок карточки -->
                                    <h5 class="card-title">
                                        <!-- Ссылка на запись с названием из Cotonti -->
                                        <a href="{LIST_ROW_URL}" class="text-decoration-none" title="{LIST_ROW_TITLE}">{LIST_ROW_TITLE}</a>
                                        <!-- Условие Cotonti: отображение админ-действий, если доступны -->
                                    </h5>
                                    <!-- Условие Cotonti: проверка наличия описания записи -->
                                    <!-- IF {LIST_ROW_DESCRIPTION} -->
                                        <!-- Описание записи мелким шрифтом в стиле Bootstrap -->
                                        <p class="card-text text-muted small">{LIST_ROW_DESCRIPTION}</p>
                                    <!-- Альтернатива: если описания нет -->
                                    <!-- ELSE -->
                                        <!-- Урезанный текст записи без HTML-тегов из Cotonti -->
                                        {LIST_ROW_TEXT_CUT|strip_tags($this)}
                                        <!-- Условие Cotonti: кнопка "Читать далее", если текст обрезан -->
                                        <!-- IF {LIST_ROW_TEXT_IS_CUT} -->
                                            <!-- Кнопка "Читать далее" в стиле Bootstrap -->
                                            <a href="{LIST_ROW_URL}" class="btn btn-outline-primary btn-sm mt-2">{PHP.L.ReadMore}</a>
                                        <!-- Конец условия обрезки текста -->
                                        <!-- ENDIF -->
                                    <!-- Конец условия описания -->
                                    <!-- ENDIF -->
                                    <!-- Дата создания записи мелким шрифтом в стиле Bootstrap -->
                                    <p class="card-text"><small class="text-body-secondary">{LIST_ROW_CREATED}</small></p>
                                    <!-- Условие Cotonti: отображение числа комментариев, если они есть -->
                                    <!-- IF {LIST_ROW_COMMENTS_COUNT} > 0 -->
                                        <!-- Значок комментариев с тултипом в стиле Bootstrap -->
                                        <div class="position-absolute top-0 end-0 mt-2 me-2" data-bs-toggle="tooltip" data-bs-title="{PHP.L.CleanCot_Comments}">
                                            <!-- Число комментариев в синем бейдже -->
                                            <span class="badge bg-primary">{LIST_ROW_COMMENTS_COUNT}</span>
                                        </div>
                                    <!-- Конец условия комментариев -->
                                    <!-- ENDIF -->
									<!-- IF {LIST_ROW_ADMIN} -->
									<p class="my-0 list-row-admin-link">{LIST_ROW_ADMIN}, {LIST_ROW_ADMIN_DELETE}, ({LIST_ROW_HITS})</p>
									<!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- Конец цикла записей в Cotonti -->
                <!-- END: LIST_ROW -->

                <!-- Условие Cotonti: отображение пагинации записей, если она активна -->
                <!-- IF {PAGINATION} -->
                    <!-- Навигация пагинации записей с ARIA-меткой в стиле Bootstrap -->
                    <nav aria-label="Page Pagination" class="mt-3">
                        <!-- Информация о текущей странице и общем числе страниц из Cotonti -->
                        <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
                        <!-- Список пагинации с выравниванием по центру в стиле Bootstrap -->
                        <ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
                    </nav>
                <!-- Конец условия пагинации записей -->
                <!-- ENDIF -->
            </div>

            <!-- Колонка боковой панели: 100% на малых экранах, 4/12 с автоцентрированием на средних -->
            <div class="col-12 col-md-4 mx-auto">
                <!-- Условие Cotonti: отображение админ-панели, если есть права на запись -->
                <!-- IF {PHP.usr.auth_write} -->
                    <!-- Карточка админ-панели с отступами в стиле Bootstrap -->
                    <div class="card mt-4 mb-4">
                        <!-- Заголовок карточки с тёмно-серым фоном и белым текстом -->
                        <div class="card-header bg-costum-dgrey text-white">
                            <!-- Заголовок "Админ" размером h5 без отступа из локализации Cotonti -->
                            <h2 class="h5 mb-0">{PHP.L.Admin}</h2>
                        </div>
                        <!-- Тело карточки -->
                        <div class="card-body">
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
                                <!-- Элемент списка с действием добавления новой страницы из Cotonti -->
                                <li class="list-group-item">{LIST_SUBMIT_NEW_PAGE}</li>
                            </ul>
                        </div>
                    </div>
                <!-- Конец условия прав на запись -->
                <!-- ENDIF -->

                <!-- Карточка тегов с отступами в стиле Bootstrap -->
                <div class="card mt-4 mb-4">
                    <!-- Заголовок карточки с тёмно-серым фоном и белым текстом -->
                    <div class="card-header bg-costum-dgrey text-white">
                        <!-- Заголовок "Теги" размером h5 без отступа из локализации Cotonti -->
                        <h2 class="h5 mb-0">{PHP.L.Tags}</h2>
                    </div>
                    <!-- Тело карточки с облаком тегов из Cotonti -->
                    <div class="card-body">{LIST_TAG_CLOUD}</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Условие Cotonti: подключение дополнительного шаблона для администраторов -->
    <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
        <!-- Подключение шаблона mskin.tpl для группы администраторов из темы Cotonti -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
    <!-- Конец условия подключения mskin -->
    <!-- ENDIF -->

<!-- Конец основного блока шаблона Cotonti -->
<!-- END: MAIN -->