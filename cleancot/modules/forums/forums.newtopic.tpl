<!-- 
/********************************************************************************
 * File: forums.newtopic.tpl
 * Description: This is an HTML page template with a form for creating a new forum topic.
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
    <div class="container py-2"> <!-- Внутренний контейнер с вертикальными отступами -->
      <nav aria-label="breadcrumb"> <!-- Навигация для хлебных крошек с ARIA-меткой -->
        <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек без нижнего отступа, с горизонтальной прокруткой -->
          {FORUMS_NEWTOPIC_BREADCRUMBS} <!-- Выводит хлебные крошки для страницы создания новой темы -->
        </ol> <!-- Закрывает список хлебных крошек -->
      </nav> <!-- Закрывает навигацию -->
    </div> <!-- Закрывает внутренний контейнер -->
  </div> <!-- Закрывает панель хлебных крошек -->

  <!-- Основной контейнер с серым фоном -->
  <div class="py-4"> <!-- Главный контейнер с вертикальными отступами -->
    <div class="container-md d-flex flex-column justify-content-center"> <!-- Контейнер средней ширины с flex-выравниванием по центру -->
      <div class="col-12 col-md-10 mx-auto"> <!-- Колонка: 100% ширины на малых экранах, 10/12 с автоцентрированием на средних -->
        <!-- Карточка с формой -->
        <div class="card"> <!-- Карточка Bootstrap для формы -->
          <div class="card-body"> <!-- Тело карточки -->
            <!-- Подключение шаблона с предупреждениями -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает шаблон предупреждений из темы -->

            <!-- Форма создания новой темы -->
            <form action="{FORUMS_NEWTOPIC_FORM_ACTION}" method="post" name="newtopic" class="needs-validation" novalidate> <!-- Форма отправки новой темы с валидацией Bootstrap -->
              <div class="row g-3"> <!-- Сетка Bootstrap с отступами между элементами -->

                <!-- Поле "Название темы" -->
                <div class="col-12"> <!-- Колонка полной ширины -->
                  <label for="topicTitle" class="form-label fw-semibold">{PHP.L.Title}:</label> <!-- Метка "Название" жирным шрифтом -->
                  <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                    {FORUMS_NEWTOPIC_FORM_TITLE} <!-- Поле ввода названия темы -->
                  </div> <!-- Закрывает группу ввода -->
                </div> <!-- Закрывает колонку названия -->

                <!-- Поле "Описание" -->
                <div class="col-12"> <!-- Колонка полной ширины -->
                  <label for="topicDesc" class="form-label fw-semibold">{PHP.L.Description}:</label> <!-- Метка "Описание" жирным шрифтом -->
                  <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                    {FORUMS_NEWTOPIC_FORM_DESCRIPTION} <!-- Поле ввода описания темы -->
                  </div> <!-- Закрывает группу ввода -->
                </div> <!-- Закрывает колонку описания -->

		<!-- получаем в один блок все экстраполя для топика из Cot::$db->forum_topics - Модуль Forums-->
                <!-- BEGIN: TOPIC_EXTRAFLD -->
                <div class="col-12">
                    <label class="form-label fw-semibold"><!-- IF {ZAKAZ_NEWTOPIC_FORM_TOPIC_EXTRAFLD_TITLE} -->{ZAKAZ_NEWTOPIC_FORM_TOPIC_EXTRAFLD_TITLE}:<!-- ENDIF --></label>
                    <div class="input-group has-validation">
                        <!-- IF {ZAKAZ_NEWTOPIC_FORM_TOPIC_EXTRAFLD} -->
                        <div class="operation-checkboxes-list">
                            {ZAKAZ_NEWTOPIC_FORM_TOPIC_EXTRAFLD}
                        </div>
                        <!-- ENDIF -->
                    </div>
                </div>
                <!-- END: TOPIC_EXTRAFLD -->

                <!-- Экстраполе "YouTube" (так используем - вне блока TOPIC_EXTRAFLD, если нам в форме создания топика нужно получить лишь одно конкретное экстраполе топика (не постов), в то время когда их несколько) -->
                <!-- IF {FORUMS_NEWTOPIC_FORM_TOPIC_XTR_FLD_YOUTUBE} --> <!-- Условие: если доступно поле YouTube -->
				<!-- в Управление сайтом / Прочее / Экстраполя / Таблица cot_forum_topics - Модуль Forums нужно создать экстраполе с названием xtr_fld_youtube -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="youtubeField" class="form-label fw-semibold">{FORUMS_NEWTOPIC_FORM_TOPIC_XTR_FLD_YOUTUBE_TITLE}:</label> <!-- Метка для поля YouTube жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {FORUMS_NEWTOPIC_FORM_TOPIC_XTR_FLD_YOUTUBE} <!-- Поле ввода ссылки на YouTube -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку YouTube -->
                <!-- ENDIF --> <!-- Закрывает условие поля YouTube -->

                <!-- BEGIN: PRIVATE --> <!-- Открывает блок приватной темы -->
                  <!-- Приватная тема -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="privateTopic" class="form-label fw-semibold">{PHP.L.forums_privatetopic1}:</label> <!-- Метка "Приватная тема" жирным шрифтом -->
                    <div class="d-flex align-items-center gap-2"> <!-- Flex-контейнер с выравниванием и отступами -->
                      {FORUMS_NEWTOPIC_FORM_PRIVATE} <!-- Чекбокс приватности -->
                      <span class="small text-muted">({PHP.L.forums_privatetopic2})</span> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает flex-контейнер -->
                  </div> <!-- Закрывает колонку приватности -->
                <!-- END: PRIVATE --> <!-- Закрывает блок приватной темы -->

                <!-- Поле "Текст поста" и файлы -->
                <div class="col-12"> <!-- Колонка полной ширины -->
                  <label for="postText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label> <!-- Скрытая метка "Сообщение" жирным шрифтом -->
                  <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                    {FORUMS_NEWTOPIC_FORM_TEXT} <!-- Поле ввода текста поста -->
                  </div> <!-- Закрывает группу ввода -->
                  <!-- Файлы -->
                  <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: активен модуль 'files', но не 'pfs' -->
                    <div class="d-flex flex-wrap gap-2 mt-3"> <!-- Flex-контейнер для файлов с отступами -->
                      <!-- IF {FORUMS_NEWTOPIC_PFS} --> <!-- Условие: есть личные файлы -->
                        <span class="me-2">{FORUMS_NEWTOPIC_PFS}</span> <!-- Личные файлы с отступом -->
                      <!-- ENDIF --> <!-- Закрывает условие личных файлов -->
                      <!-- IF {FORUMS_NEWTOPIC_SFS} --> <!-- Условие: есть общие файлы -->
                        {FORUMS_NEWTOPIC_SFS} <!-- Общие файлы сайта -->
                      <!-- ENDIF --> <!-- Закрывает условие общих файлов -->
                    </div> <!-- Закрывает flex-контейнер файлов -->
                  <!-- ENDIF --> <!-- Закрывает условие 'files' -->
                  <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен 'pfs', но не 'files' -->
                    <div class="d-flex flex-wrap gap-2 mt-3"> <!-- Flex-контейнер для файлов с отступами -->
                      <!-- IF {FORUMS_NEWTOPIC_PFS} --> <!-- Условие: есть личные файлы -->
                        <span class="me-2">{FORUMS_NEWTOPIC_PFS}</span> <!-- Личные файлы с отступом -->
                      <!-- ENDIF --> <!-- Закрывает условие личных файлов -->
                      <!-- IF {FORUMS_NEWTOPIC_SFS} --> <!-- Условие: есть общие файлы -->
                        {FORUMS_NEWTOPIC_SFS} <!-- Общие файлы сайта -->
                      <!-- ENDIF --> <!-- Закрывает условие общих файлов -->
                    </div> <!-- Закрывает flex-контейнер файлов -->
                  <!-- ENDIF --> <!-- Закрывает условие 'pfs' -->
                  <!-- IF {FORUMS_NEWTOPIC_EDIT_TIMEOUT} --> <!-- Условие: есть таймаут редактирования -->
                    <p class="small text-muted mt-3">{PHP.L.forums_edittimeoutnote} {FORUMS_NEWTOPIC_EDIT_TIMEOUT}</p> <!-- Примечание о таймауте мелким шрифтом -->
                  <!-- ENDIF --> <!-- Закрывает условие таймаута -->
                </div> <!-- Закрывает колонку текста и файлов -->

                <!-- BEGIN: POLL --> <!-- Открывает блок опроса -->
                  <!-- Блок опроса -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <div class="row g-3"> <!-- Внутренняя сетка с отступами -->
                      <!-- Левая колонка с заголовком -->
                      <div class="col-lg-3 col-12"> <!-- Колонка: 3/12 на больших экранах, 100% на малых -->
                        <label class="form-label d-inline-flex align-items-center"> <!-- Метка с flex-выравниванием -->
                          <button class="btn btn-outline-danger" type="button" data-bs-toggle="collapse" data-bs-target="#toggle-usage">{PHP.L.Poll}</button> <!-- Кнопка сворачивания блока опроса -->
                          <span class="ms-2 text-primary" data-bs-toggle="tooltip" title="{PHP.L.Poll}"> <!-- Иконка с тултипом -->
                            <i class="fa-solid fa-circle-question fa-lg"></i> <!-- Иконка вопроса из Font Awesome -->
                          </span> <!-- Закрывает иконку -->
                        </label> <!-- Закрывает метку -->
                      </div> <!-- Закрывает левую колонку -->
                      <!-- Правая колонка с содержимым -->
                      <div class="col-lg-9 col-12"> <!-- Колонка: 9/12 на больших экранах, 100% на малых -->
                        <div id="toggle-usage" class="collapse"> <!-- Сворачиваемый блок опроса -->
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
                            <div class="mb-3"> <!-- Контейнер для опции с отступом -->
                              <div class="polloptiondiv position-relative"> <!-- Контейнер опции с позиционированием -->
                                {EDIT_POLL_OPTION_TEXT} <!-- Поле ввода текста опции -->
                                <button name="deloption" value="x" type="button" class="deloption btn btn-warning btn-sm position-absolute top-50 end-0 translate-middle-y me-2" style="display:none;"> <!-- Кнопка удаления опции -->
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
                    </div> <!-- Закрывает внутреннюю сетку -->
                  </div> <!-- Закрывает колонку опроса -->
                <!-- END: POLL --> <!-- Закрывает блок опроса -->

                <!-- BEGIN: FORUMS_NEWTOPIC_TAGS --> <!-- Открывает блок тегов -->
                  <!-- Поле "Теги" -->
                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="tags" class="form-label fw-semibold">{PHP.L.Tags}:</label> <!-- Метка "Теги" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {FORUMS_NEWTOPIC_FORM_TAGS} <!-- Поле ввода тегов -->
                    </div> <!-- Закрывает группу ввода -->
                    <small class="form-text text-muted">({FORUMS_NEWTOPIC_TOP_TAGS_HINT})</small> <!-- Подсказка для тегов мелким шрифтом -->
                  </div> <!-- Закрывает колонку тегов -->
                <!-- END: FORUMS_NEWTOPIC_TAGS --> <!-- Закрывает блок тегов -->

                <!-- Кнопка отправки -->
                <div class="col-12"> <!-- Колонка полной ширины -->
                  <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Flex-контейнер для кнопки с выравниванием вправо на md -->
                    <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button> <!-- Кнопка "Отправить" -->
                  </div> <!-- Закрывает flex-контейнер -->
                </div> <!-- Закрывает колонку кнопки -->
              </div> <!-- Закрывает сетку формы -->
            </form> <!-- Закрывает форму создания темы -->
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
        <code>forums.newtopic.tpl</code> <!-- Имя шаблона в кодовом стиле -->
      </div> <!-- Закрывает предупреждение -->
    </div> <!-- Закрывает контейнер уведомления -->
  <!-- ENDIF --> <!-- Закрывает условие для админа -->

<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->
