<!-- 
/********************************************************************************
 * File: forums.editpost.tpl
 * Description: This is an HTML template of a page with a form for editing a forum topic and its posts.
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
<!-- BEGIN: MAIN --> <!-- Открывает основной блок шаблона Cotonti -->

  <!-- Панель хлебных крошек -->
  <div class="bg-light py-2 border-bottom border-primary"> <!-- Контейнер хлебных крошек с светлым фоном и синей нижней границей -->
    <!-- Контейнер для хлебных крошек -->
    <div class="container py-2"> <!-- Внутренний контейнер с вертикальными отступами -->
      <!-- Навигация по хлебным крошкам -->
      <nav aria-label="breadcrumb"> <!-- Навигация для хлебных крошек с ARIA-меткой -->
        <!-- Список хлебных крошек -->
        <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек без нижнего отступа, с горизонтальной прокруткой -->
          {FORUMS_EDITPOST_BREADCRUMBS} <!-- Выводит хлебные крошки для страницы редактирования поста -->
        </ol> <!-- Закрывает список хлебных крошек -->
      </nav> <!-- Закрывает навигацию -->
    </div> <!-- Закрывает внутренний контейнер -->
  </div> <!-- Закрывает панель хлебных крошек -->

  <!-- Основной контейнер с серым фоном -->
  <div class="py-4"> <!-- Главный контейнер с вертикальными отступами -->
    <!-- Контейнер с вертикальным выравниванием -->
    <div class="container-md d-flex flex-column justify-content-center"> <!-- Контейнер средней ширины с flex-выравниванием по центру -->
      <!-- Центрированная колонка -->
      <div class="col-12 col-md-10 mx-auto"> <!-- Колонка: 100% ширины на малых экранах, 10/12 с автоцентрированием на средних -->
        <!-- Подзаголовок -->
        <!-- IF {FORUMS_EDITPOST_SUBTITLE} --> <!-- Условие: если есть подзаголовок -->
          <p class="text-muted mb-3">{FORUMS_EDITPOST_SUBTITLE}</p> <!-- Подзаголовок серым цветом с нижним отступом -->
        <!-- ENDIF --> <!-- Закрывает условие подзаголовка -->

        <!-- Карточка с формой -->
        <div class="card"> <!-- Карточка Bootstrap для формы -->
          <!-- Тело карточки -->
          <div class="card-body"> <!-- Тело карточки -->
            <!-- Подключение шаблона с предупреждениями -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает шаблон предупреждений из темы -->

            <!-- Форма редактирования поста -->
            <form action="{FORUMS_EDITPOST_FORM_ACTION}" method="POST" name="editpost" class="needs-validation" novalidate> <!-- Форма отправки с валидацией Bootstrap -->
              <!-- Сетка для полей формы с единым отступом -->
              <div class="row g-3"> <!-- Сетка Bootstrap с отступами между элементами -->

                <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST --> <!-- Открывает блок редактирования первого поста темы -->
                  <!-- Поле "Название темы" -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="topicTitle" class="form-label fw-semibold">{PHP.L.forums_topic}:</label> <!-- Метка "Тема" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {FORUMS_EDITPOST_FORM_TOPIC_TITTLE} <!-- Поле ввода названия темы -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку названия -->
                  <!-- Поле "Описание" -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="topicDesc" class="form-label fw-semibold">{PHP.L.Description}:</label> <!-- Метка "Описание" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {FORUMS_EDITPOST_FORM_TOPIC_DESCRIPTION} <!-- Поле ввода описания темы -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку описания -->
                  <!-- Экстраполе "YouTube" -->
                  <!-- IF {FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE} --> <!-- Условие: если доступно поле YouTube -->
                    <!-- в Управление сайтом / Прочее / Экстраполя / Таблица cot_forum_topics - Модуль Forums нужно создать экстраполе с названием xtr_fld_youtube -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="youtubeField" class="form-label fw-semibold">{FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE_TITLE}:</label> <!-- Метка для поля YouTube жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE} <!-- Поле ввода ссылки на YouTube -->
                      </div> <!-- Закрывает группу ввода -->
                    </div> <!-- Закрывает колонку YouTube -->
                  <!-- ENDIF --> <!-- Закрывает условие поля YouTube -->
                <!-- END: FORUMS_EDITPOST_FIRSTPOST --> <!-- Закрывает блок первого поста -->

                <!-- Поле "Текст поста" -->
                <div class="col-12"> <!-- Колонка полной ширины -->
                  <label for="postText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label> <!-- Скрытая метка "Сообщение" жирным шрифтом -->
                  <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                    {FORUMS_EDITPOST_FORM_TEXT} <!-- Поле ввода текста поста -->
                  </div> <!-- Закрывает группу ввода -->
                </div> <!-- Закрывает колонку текста -->

                <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: активен модуль 'files', но не 'pfs' -->
                  <!-- Поле "Файлы" -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="postFiles" class="form-label fw-semibold">{PHP.L.Files}:</label> <!-- Метка "Файлы" жирным шрифтом -->
                    <div class="d-flex flex-wrap gap-2"> <!-- Flex-контейнер для файлов с отступами -->
                      <!-- IF {FORUMS_EDITPOST_PFS} --> <!-- Условие: есть личные файлы -->
                        <span class="me-2">{FORUMS_EDITPOST_PFS}</span> <!-- Личные файлы с отступом -->
                      <!-- ENDIF --> <!-- Закрывает условие личных файлов -->
                      <!-- IF {FORUMS_EDITPOST_SFS} --> <!-- Условие: есть общие файлы -->
                        {FORUMS_EDITPOST_SFS} <!-- Общие файлы сайта -->
                      <!-- ENDIF --> <!-- Закрывает условие общих файлов -->
                    </div> <!-- Закрывает flex-контейнер файлов -->
                    <hr> <!-- Горизонтальная линия -->
                    <div class="d-flex flex-wrap gap-2"> <!-- Flex-контейнер для прикрепления файлов -->
                      <h4 class="border-bottom text-primary pb-2 mb-0">Прикрепление файлов "на-лету"</h4> <!-- Заголовок для прикрепления файлов -->
                      {PHP.p|cot_filesFileBox('forums', $this)} <!-- Виджет прикрепления файлов -->
                    </div> <!-- Закрывает flex-контейнер прикрепления -->
                  </div> <!-- Закрывает колонку файлов -->
                <!-- ENDIF --> <!-- Закрывает условие 'files' -->

                <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен 'pfs', но не 'files' -->
                  <!-- Поле "Файлы" -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="postFiles" class="form-label fw-semibold">{PHP.L.Files}:</label> <!-- Метка "Файлы" жирным шрифтом -->
                    <div class="d-flex flex-wrap gap-2"> <!-- Flex-контейнер для файлов с отступами -->
                      <!-- IF {FORUMS_EDITPOST_PFS} --> <!-- Условие: есть личные файлы -->
                        <span class="me-2">{FORUMS_EDITPOST_PFS}</span> <!-- Личные файлы с отступом -->
                      <!-- ENDIF --> <!-- Закрывает условие личных файлов -->
                      <!-- IF {FORUMS_EDITPOST_SFS} --> <!-- Условие: есть общие файлы -->
                        {FORUMS_EDITPOST_SFS} <!-- Общие файлы сайта -->
                      <!-- ENDIF --> <!-- Закрывает условие общих файлов -->
                    </div> <!-- Закрывает flex-контейнер файлов -->
                  </div> <!-- Закрывает колонку файлов -->
                <!-- ENDIF --> <!-- Закрывает условие 'pfs' -->

                <!-- Таймаут редактирования -->
                <!-- IF {FORUMS_EDITPOST_EDIT_TIMEOUT} --> <!-- Условие: есть таймаут редактирования -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <p class="small text-muted">{PHP.L.forums_edittimeoutnote} {FORUMS_EDITPOST_EDIT_TIMEOUT}</p> <!-- Примечание о таймауте мелким шрифтом -->
                  </div> <!-- Закрывает колонку таймаута -->
                <!-- ENDIF --> <!-- Закрывает условие таймаута -->

                <!-- BEGIN: POLL --> <!-- Открывает блок опроса -->
                  <!-- Блок опроса -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <div class="row g-3"> <!-- Внутренняя сетка с отступами -->
                      <!-- Левая колонка с заголовком -->
                      <div class="col-lg-3 col-12"> <!-- Колонка: 3/12 на больших экранах, 100% на малых -->
                        <label class="form-label d-inline-flex align-items-center"> <!-- Метка с flex-выравниванием -->
                          <!-- Кнопка для раскрытия опроса -->
                          <button class="btn btn-outline-danger" type="button" data-bs-toggle="collapse" data-bs-target="#toggle-usage">{PHP.L.Poll}</button> <!-- Кнопка сворачивания блока опроса -->
                          <!-- Иконка с подсказкой -->
                          <span class="ms-2 text-primary" data-bs-toggle="tooltip" title="{PHP.L.Poll}"> <!-- Иконка с тултипом -->
                            <i class="fa-solid fa-circle-question fa-lg"></i> <!-- Иконка вопроса из Font Awesome -->
                          </span> <!-- Закрывает иконку -->
                        </label> <!-- Закрывает метку -->
                      </div> <!-- Закрывает левую колонку -->

                      <!-- Правая колонка с содержимым -->
                      <div class="col-lg-9 col-12"> <!-- Колонка: 9/12 на больших экранах, 100% на малых -->
                        <!-- Скрываемый блок опроса -->
                        <div id="toggle-usage" class="collapse"> <!-- Сворачиваемый блок опроса -->
                          <!-- Подключение скриптов для опроса -->
                          <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script> <!-- Подключение JS для опросов -->
                          <script type="text/javascript"> <!-- Встроенный скрипт -->
                            var ansMax = {PHP.cfg.polls.max_options_polls}; <!-- Максимальное количество опций из конфигурации -->
                          </script> <!-- Закрывает встроенный скрипт -->
                          <!-- Поле ID опроса -->
                          <div class="form-group mb-3">{EDIT_POLL_IDFIELD}</div> <!-- Поле ввода ID опроса с отступом -->
                          <!-- Подзаголовок -->
                          <div class="mb-3"> <!-- Контейнер подзаголовка с отступом -->
                            <span class="small text-muted">{PHP.L.poll}:</span> <!-- Текст "Опрос" мелким шрифтом -->
                          </div> <!-- Закрывает подзаголовок -->
                          <!-- Текст опроса -->
                          <div class="mb-3">{EDIT_POLL_TEXT}</div> <!-- Поле ввода текста опроса -->
                          <hr class="my-3"> <!-- Горизонтальная линия с отступами -->
                          <!-- Заголовок опций -->
                          <div class="mb-3">{PHP.L.Options}:</div> <!-- Текст "Опции" с отступом -->
                          <!-- BEGIN: OPTIONS --> <!-- Открывает цикл опций опроса -->
                            <!-- Блок каждой опции -->
                            <div class="mb-3"> <!-- Контейнер для опции с отступом -->
                              <div class="polloptiondiv position-relative"> <!-- Контейнер опции с позиционированием -->
                                {EDIT_POLL_OPTION_TEXT} <!-- Поле ввода текста опции -->
                                <!-- Кнопка удаления опции -->
                                <button name="deloption" value="x" type="button" class="deloption btn btn-warning btn-sm position-absolute top-50 end-0 translate-middle-y me-2" style="display:none;"> <!-- Кнопка удаления -->
                                  <i class="fa-solid fa-trash"></i> <!-- Иконка корзины -->
                                </button> <!-- Закрывает кнопку удаления -->
                              </div> <!-- Закрывает контейнер опции -->
                            </div> <!-- Закрывает контейнер опции -->
                          <!-- END: OPTIONS --> <!-- Закрывает цикл опций -->
                          <!-- Кнопка добавления опции -->
                          <div class="mb-3"> <!-- Контейнер кнопки с отступом -->
                            <input id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn btn-outline-secondary shadow-sm" style="display:none;" /> <!-- Кнопка "Добавить" -->
                          </div> <!-- Закрывает контейнер кнопки -->
                          <!-- Множественный выбор -->
                          <div>{EDIT_POLL_MULTIPLE}</div> <!-- Чекбокс множественного выбора -->
                        </div> <!-- Закрывает сворачиваемый блок -->
                      </div> <!-- Закрывает правую колонку -->

                      <!-- BEGIN: EDIT --> <!-- Открывает блок дополнительных действий редактирования -->
                        <!-- Дополнительные действия для редактирования -->
                        <div class="col-lg-3 col-12"> <!-- Пустая колонка для выравнивания -->
                          <!-- Пустая колонка для выравнивания -->
                        </div> <!-- Закрывает пустую колонку -->
                        <div class="col-lg-9 col-12"> <!-- Колонка для действий -->
                          <div class="form-group">{EDIT_POLL_LOCKED} {EDIT_POLL_RESET} {EDIT_POLL_DELETE}</div> <!-- Чекбоксы блокировки, сброса и удаления опроса -->
                        </div> <!-- Закрывает колонку действий -->
                      <!-- END: EDIT --> <!-- Закрывает блок дополнительных действий -->
                    </div> <!-- Закрывает внутреннюю сетку -->
                  </div> <!-- Закрывает колонку опроса -->
                <!-- END: POLL --> <!-- Закрывает блок опроса -->

                <!-- BEGIN: FORUMS_EDITPOST_TAGS --> <!-- Открывает блок тегов -->
                  <!-- Поле "Теги" -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="tags" class="form-label fw-semibold">{PHP.L.Tags}:</label> <!-- Метка "Теги" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {FORUMS_EDITPOST_FORM_TAGS} <!-- Поле ввода тегов -->
                    </div> <!-- Закрывает группу ввода -->
                    <small class="form-text text-muted">{FORUMS_EDITPOST_TOP_TAGS_HINT}</small> <!-- Подсказка для тегов мелким шрифтом -->
                  </div> <!-- Закрывает колонку тегов -->
                <!-- END: FORUMS_EDITPOST_TAGS --> <!-- Закрывает блок тегов -->

                <!-- Кнопка отправки -->
                <div class="col-12"> <!-- Колонка полной ширины -->
                  <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Flex-контейнер для кнопки с выравниванием вправо на md -->
                    <button type="submit" class="btn btn-primary">{PHP.L.Update}</button> <!-- Кнопка "Обновить" -->
                  </div> <!-- Закрывает flex-контейнер -->
                </div> <!-- Закрывает колонку кнопки -->
              </div> <!-- Закрывает сетку формы -->
            </form> <!-- Закрывает форму редактирования -->
          </div> <!-- Закрывает тело карточки -->
        </div> <!-- Закрывает карточку -->
      </div> <!-- Закрывает колонку формы -->
    </div> <!-- Закрывает контейнер -->
  </div> <!-- Закрывает главный контейнер -->

  <!-- This is the name of the template for informing the administrator -->
  <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: пользователь — администратор -->
    <div class="container py-5"> <!-- Контейнер для уведомления с большими отступами -->
      <div class="alert alert-warning" role="alert"> <!-- Предупреждение Bootstrap желтого цвета -->
        <strong>{PHP.usr.name}</strong>, This is the HTML template <!-- Текст уведомления с именем пользователя -->
        <code>forums.editpost.tpl</code> <!-- Имя шаблона в кодовом стиле -->
      </div> <!-- Закрывает предупреждение -->
    </div> <!-- Закрывает контейнер уведомления -->
  <!-- ENDIF --> <!-- Закрывает условие для админа -->
<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->