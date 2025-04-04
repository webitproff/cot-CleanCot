<!-- 
/********************************************************************************
 * File: pm.list.tpl
 * Extention: module 'pm'
 * Description: The `pm.list.tpl` template displays a list of private messages with navigation, filters, and management options.
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

<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->
    <!-- BEGIN: BEFORE_AJAX --> <!-- Начало блока перед AJAX-контентом -->
        <!-- Контейнер для AJAX-контента -->
        <div id="ajaxBlock"> <!-- Открывающий тег контейнера для динамического контента -->
    <!-- END: BEFORE_AJAX --> <!-- Конец блока перед AJAX-контентом -->

        <!-- Панель хлебных крошек -->
        <div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер для хлебных крошек с фоном и границей -->
            <!-- Контейнер для хлебных крошек -->
            <div class="container-xl py-2"> <!-- Внутренний контейнер с отступами -->
                <!-- Навигация по хлебным крошкам -->
                <nav aria-label="breadcrumb"> <!-- Элемент навигации для доступности -->
                    <!-- Список хлебных крошек -->
                    <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список с горизонтальной прокруткой -->
                        {PM_PAGETITLE} <!-- Плейсхолдер для заголовка страницы -->
                    </ol> <!-- Закрывающий тег списка хлебных крошек -->
                </nav> <!-- Закрывающий тег навигации -->
            </div> <!-- Закрывающий тег внутреннего контейнера -->
        </div> <!-- Закрывающий тег панели хлебных крошек -->

        <!-- Основной контейнер с серым фоном -->
        <!-- Контейнер среднего размера с вертикальным выравниванием -->
        <div class="container-xl py-5 min-height-50vh"> <!-- Основной контейнер с минимальной высотой -->
            <h2 class="h5 mb-0">{PHP.L.Private_Messages}</h2> <!-- Заголовок страницы личных сообщений -->
            <p class="small text-muted mb-3">{PM_SUBTITLE}</p> <!-- Подзаголовок с дополнительной информацией -->
            <!-- Сетка для содержимого -->
            <div class="row"> <!-- Открывающий тег сетки Bootstrap -->
                <!-- Центрированная колонка -->
                <div class="col-12 mx-auto"> <!-- Колонка на всю ширину с автоотступами -->
                    <!-- Сетка с двумя колонками -->
                    <div class="row"> <!-- Внутренняя сетка для двухколоночной структуры -->
                        <!-- Левая колонка с навигацией и фильтрами -->
                        <div class="col-md-3 mb-3"> <!-- Левая колонка, 3/12 ширины на средних экранах -->
                            <!-- Карточка для подзаголовка и навигации -->
                            <div class="card"> <!-- Карточка Bootstrap -->
                                <!-- Тело карточки -->
                                <div class="card-body"> <!-- Тело карточки с содержимым -->
                                    <!-- Навигация (список папок) -->
                                    <ul class="list-group list-group-flush"> <!-- Список без отступов -->
                                        <!-- Ссылка на входящие -->
                                        <li class="list-group-item">{PM_INBOX} <span class="badge bg-info text-white">{PM_INBOX_COUNT}</span>
</li> <!-- Элемент списка для входящих -->
                                        <!-- Ссылка на отправленные -->
                                        <li class="list-group-item">{PM_SENTBOX} <span class="badge text-bg-info">{PM_SENTBOX_COUNT}</span>
</li> <!-- Элемент списка для отправленных -->
                                        <!-- Ссылка на новое сообщение -->
                                        <li class="list-group-item">{PM_SENDNEWPM}</li> <!-- Элемент списка для нового сообщения -->
                                    </ul> <!-- Закрывающий тег списка навигации -->
                                    <!-- Заголовок фильтров -->
                                    <p class="fw-semibold mb-2">{PHP.L.Filter}:</p> <!-- Заголовок секции фильтров -->
                                    <!-- Список фильтров -->
                                    <ul class="nav flex-column"> <!-- Вертикальный список фильтров -->
                                        <!-- Фильтр непрочитанных -->
                                        <li class="nav-item">{PM_FILTER_UNREAD}</li> <!-- Элемент фильтра непрочитанных -->
                                        <!-- Фильтр избранных -->
                                        <li class="nav-item">{PM_FILTER_STARRED}</li> <!-- Элемент фильтра избранных -->
                                        <!-- Фильтр всех сообщений -->
                                        <li class="nav-item"><a class="text-reset mb-0 fs-6 fw-semibold text-primary-emphasis text-decoration-none" href="{PM_FILTER_ALL_URL}" title="{PHP.L.pm_all}">{PHP.L.pm_all}</a></li> <!-- Элемент фильтра всех сообщений -->
                                    </ul> <!-- Закрывающий тег списка фильтров -->
                                </div> <!-- Закрывающий тег тела карточки -->
                            </div> <!-- Закрывающий тег карточки -->
                        </div> <!-- Закрывающий тег левой колонки -->

                        <!-- Правая колонка со списком сообщений -->
                        <div class="col-md-9"> <!-- Правая колонка, 9/12 ширины на средних экранах -->
                            <!-- Форма управления сообщениями -->
                            <form action="{PM_FORM_UPDATE}" method="post" name="update" id="update" class="ajax"> <!-- Форма с AJAX-обработкой -->

                                <!-- Список сообщений -->
                                <!-- Личные сообщения -->
                                <div class="card mb-5"> <!-- Карточка для списка сообщений с нижним отступом -->
                                    <!-- Заголовок карточки -->
                                    <div class="card-header bg-primary-subtle"> <!-- Заголовок карточки с фоном -->
                                        <div class="row g-3"> <!-- Сетка с отступами -->
                                            <div class="col-12 col-md-8"> <!-- Левая часть заголовка -->
                                                <div class="row g-2"> <!-- Внутренняя сетка -->
                                                    <div class="col-md-1 text-center"> <!-- Колонка для чекбокса -->
                                                        <!-- Чекбокс для выбора всех -->
                                                        <!-- IF {PHP.cfg.jquery} --> <!-- Условие для jQuery -->
                                                        <input class="form-check-input" type="checkbox" value="{PHP.L.pm_Selectall}/{PHP.L.pm_Unselectall}" onclick="$('.checkbox').attr('checked', this.checked);" /> <!-- Чекбокс для выбора всех -->
                                                        <!-- ENDIF --> <!-- Конец условия jQuery -->
                                                    </div> <!-- Закрывающий тег колонки чекбокса -->
                                                    <div class="col-md-2 text-center d-none d-md-block">{PHP.L.Status}</div> <!-- Колонка статуса -->
                                                    <div class="col-md-2 text-center d-none d-md-block"> <!-- Колонка звезды -->
                                                        <div class="pm-star pm-star-readonly"> <!-- Контейнер для звезды -->
                                                            <a href="#" title="{PHP.L.pm_starred}">&nbsp;</a> <!-- Ссылка-звезда (пустая для заголовка) -->
                                                        </div> <!-- Закрывающий тег контейнера звезды -->
                                                    </div> <!-- Закрывающий тег колонки звезды -->
                                                    <div class="col-md-7 text-md-start d-none d-md-block">{PHP.L.Subject}</div> <!-- Колонка темы -->
                                                </div> <!-- Закрывающий тег внутренней сетки -->
                                            </div> <!-- Закрывающий тег левой части -->
                                            <div class="col-12 col-md-4 d-none d-md-block"> <!-- Правая часть заголовка -->
                                                <div class="row g-2"> <!-- Внутренняя сетка с центрированием -->
                                                    <div class="col-md-4">{PM_SENT_TYPE}</div> <!-- Колонка типа отправки -->
                                                    <div class="col-md-4">{PHP.L.Date}</div> <!-- Колонка даты -->
                                                    <div class="col-md-4">{PHP.L.Action}</div> <!-- Колонка действий -->
                                                </div> <!-- Закрывающий тег внутренней сетки -->
                                            </div> <!-- Закрывающий тег правой части -->
                                        </div> <!-- Закрывающий тег сетки заголовка -->
                                    </div> <!-- Закрывающий тег заголовка карточки -->

                                    <!-- Тело карточки -->
                                    <div class="card-body p-0"> <!-- Тело карточки без внутренних отступов -->
                                        <div class="list-group list-group-striped list-group-flush"> <!-- Список с чередованием фона -->

                                            <!-- BEGIN: PM_ROW --> <!-- Начало цикла вывода сообщений -->
                                                <!-- Элемент списка сообщений -->
                                                <div class="list-group-item list-group-item-action {PM_ROW_ODDEVEN}"> <!-- Элемент списка с чередованием -->
                                                    <div class="row g-3"> <!-- Сетка с отступами -->
                                                        <div class="col-12 col-md-8"> <!-- Левая часть элемента -->
                                                            <div class="row g-2 align-items-center"> <!-- Внутренняя сетка с выравниванием -->
                                                                <div class="col-md-1 text-center"> <!-- Колонка чекбокса -->
                                                                    <input class="form-check-input checkbox" type="checkbox" name="msg[{PM_ROW_ID}]" /> <!-- Чекбокс для выбора сообщения -->
                                                                </div> <!-- Закрывающий тег колонки чекбокса -->
                                                                <div class="col-md-2 text-center">{PM_ROW_ICON_STATUS}</div> <!-- Колонка иконки статуса -->
                                                                <div class="col-md-2 text-center">{PM_ROW_STAR}</div> <!-- Колонка звезды -->
                                                                <div class="col-md-7"> <!-- Колонка темы и описания -->
                                                                    <p class="text-truncate text-reset mb-0 fs-6 fw-semibold text-primary-emphasis text-decoration-none">
																	<!-- IF {PM_ROW_STARED} -->
																	<span class="badge text-bg-warning me-2">{PHP.L.pm_starred}</span>
																	<!-- ENDIF -->
																	{PM_ROW_TITLE}</p> <!-- Заголовок сообщения -->
                                                                    <p class="small text-muted mb-0">{PM_ROW_DESC|strip_tags($this)|mb_substr($this, 0, 120, 'UTF-8')}</p> <!-- Описание сообщения -->
                                                                </div> <!-- Закрывающий тег колонки темы -->
                                                            </div> <!-- Закрывающий тег внутренней сетки -->
                                                        </div> <!-- Закрывающий тег левой части -->
														<div class="col-12 col-md-4"> <!-- Правая часть заголовка -->
															<div class="row g-2"> <!-- Внутренняя сетка с центрированием -->
																<div class="col col-md-4"><small class="text-body-secondary">{PM_ROW_USER_NAME}</small></div> <!-- Колонка типа отправки -->
																<div class="col col-md-4"><small class="text-body-secondary">{PM_ROW_DATE}</small></div> <!-- Колонка даты -->
																<div class="col col-md-4"><small class="text-body-secondary">{PM_ROW_ICON_EDIT} {PM_ROW_ICON_DELETE_CONFIRM}</small></div> <!-- Колонка действий -->
															</div> <!-- Закрывающий тег внутренней сетки -->
														</div> <!-- Закрывающий тег правой части -->
                                                    </div> <!-- Закрывающий тег сетки элемента -->
                                                </div> <!-- Закрывающий тег элемента списка -->
                                            <!-- END: PM_ROW --> <!-- Конец цикла вывода сообщений -->

                                            <!-- BEGIN: PM_ROW_EMPTY --> <!-- Начало блока для пустого списка -->
                                                <!-- Если сообщений нет -->
                                                <div class="list-group-item text-center"> <!-- Элемент списка для пустого состояния -->
                                                    {PHP.L.None} <!-- Текст "Нет сообщений" -->
                                                </div> <!-- Закрывающий тег элемента пустого списка -->
                                            <!-- END: PM_ROW_EMPTY --> <!-- Конец блока для пустого списка -->
                                        </div> <!-- Закрывающий тег списка -->
                                    </div> <!-- Закрывающий тег тела карточки -->
                                </div> <!-- Закрывающий тег карточки сообщений -->

                                <!-- Если есть сообщения -->
                                <!-- IF {PHP.jj} > 0 --> <!-- Условие: отображение при наличии сообщений -->
                                    <!-- Управление выбранными сообщениями -->
                                    <div class="mt-3"> <!-- Контейнер для управления с верхним отступом -->
                                        <!-- Выбор действия -->
                                        <div class="d-flex flex-wrap align-items-center gap-2"> <!-- Flex-контейнер для элементов -->
                                            <span class="fw-semibold">{PHP.L.pm_selected}:</span> <!-- Текст "Выбрано" -->
                                            <select name="action" class="form-select w-auto" size="1"> <!-- Выпадающий список действий -->
                                                <option value="delete">{PHP.L.Delete}</option> <!-- Опция удаления -->
                                                <option value="star" selected="selected">{PHP.L.pm_putinstarred}</option> <!-- Опция добавления в избранное -->
                                            </select> <!-- Закрывающий тег списка действий -->
                                            <!-- Кнопка подтверждения -->
                                            <button type="submit" name="delete" class="btn btn-primary">{PHP.L.Confirm}</button> <!-- Кнопка подтверждения -->
                                        </div> <!-- Закрывающий тег flex-контейнера -->
                                    </div> <!-- Закрывающий тег контейнера управления -->

                                    <!-- Навигация по страницам -->
                                    <!-- IF {PAGINATION} --> <!-- Условие: отображение пагинации -->
                                        <nav class="mt-3" aria-label="Pagination"> <!-- Навигация для пагинации -->
                                            <ul class="pagination justify-content-center"> <!-- Список пагинации с центрированием -->
                                                {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE} <!-- Плейсхолдеры пагинации -->
                                            </ul> <!-- Закрывающий тег списка пагинации -->
                                        </nav> <!-- Закрывающий тег навигации пагинации -->
                                    <!-- ENDIF --> <!-- Конец условия пагинации -->
                                <!-- ENDIF --> <!-- Конец условия наличия сообщений -->
                            </form> <!-- Закрывающий тег формы -->
                        </div> <!-- Закрывающий тег правой колонки -->
                    </div> <!-- Закрывающий тег внутренней сетки -->
                </div> <!-- Закрывающий тег центрированной колонки -->
            </div> <!-- Закрывающий тег сетки содержимого -->
        </div> <!-- Закрывающий тег основного контейнера -->
    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для группы администраторов (ID 5) -->
        <div class="container-xl py-5"> <!-- Контейнер для уведомления с отступами -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <!-- Текст уведомления -->
                <code>pm.list.tpl</code> <!-- Имя шаблона в формате кода -->
            </div> <!-- Закрытие блока предупреждения -->
        </div> <!-- Закрытие контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
    <!-- BEGIN: AFTER_AJAX --> <!-- Начало блока после AJAX-контента -->
        <!-- Закрывающий тег для AJAX-контента -->
        </div> <!-- Закрывающий тег контейнера AJAX -->
    <!-- END: AFTER_AJAX --> <!-- Конец блока после AJAX-контента -->

<!-- END: MAIN --> <!-- Конец основного блока шаблона -->