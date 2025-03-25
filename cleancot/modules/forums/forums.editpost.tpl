<!-- BEGIN: MAIN -->

<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <!-- Контейнер для хлебных крошек -->
  <div class="container py-2">
    <!-- Навигация по хлебным крошкам -->
    <nav aria-label="breadcrumb">
      <!-- Список хлебных крошек -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {FORUMS_EDITPOST_BREADCRUMBS}
      </ol>
    </nav>
  </div>
</div>

<!-- Основной контейнер с серым фоном -->
<div class="bg-body-secondary py-4">
  <!-- Контейнер с вертикальным выравниванием -->
  <div class="container-md d-flex flex-column justify-content-center">
    <!-- Центрированная колонка -->
    <div class="col-12 col-md-10 mx-auto">
      <!-- Подзаголовок -->
      <!-- IF {FORUMS_EDITPOST_SUBTITLE} -->
      <p class="text-muted mb-3">{FORUMS_EDITPOST_SUBTITLE}</p>
      <!-- ENDIF -->

      <!-- Карточка с формой -->
      <div class="card">
        <!-- Тело карточки -->
        <div class="card-body">
          <!-- Подключение шаблона с предупреждениями -->
          {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

          <!-- Форма редактирования поста -->
          <form action="{FORUMS_EDITPOST_FORM_ACTION}" method="POST" name="editpost" class="needs-validation" novalidate>
            <!-- Сетка для полей формы с единым отступом -->
            <div class="row g-3">
              <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
              <!-- Поле "Название темы" -->
              <div class="col-12">
                <label for="topicTitle" class="form-label fw-semibold">{PHP.L.forums_topic}:</label>
                <div class="input-group has-validation">
                  {FORUMS_EDITPOST_FORM_TOPIC_TITTLE}
                </div>
              </div>
              <!-- Поле "Описание" -->
              <div class="col-12">
                <label for="topicDesc" class="form-label fw-semibold">{PHP.L.Description}:</label>
                <div class="input-group has-validation">
                  {FORUMS_EDITPOST_FORM_TOPIC_DESCRIPTION}
                </div>
              </div>
              <!-- Экстраполе "YouTube" -->
              <!-- IF {FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE} -->
              <div class="col-12">
                <label for="youtubeField" class="form-label fw-semibold">{FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE_TITLE}:</label>
                <div class="input-group has-validation">
                  {FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE}
                </div>
              </div>
              <!-- ENDIF -->
              <!-- END: FORUMS_EDITPOST_FIRSTPOST -->

              <!-- Поле "Текст поста" -->
              <div class="col-12">
                <label for="postText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label>
                <div class="input-group has-validation">
                  {FORUMS_EDITPOST_FORM_TEXT}
                </div>
              </div>

              <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
              <!-- Поле "Файлы" -->
              <div class="col-12">
                <label for="postFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                <div class="d-flex flex-wrap gap-2">
                  <!-- IF {FORUMS_EDITPOST_PFS} -->
                  <span class="me-2">{FORUMS_EDITPOST_PFS}</span>
                  <!-- ENDIF -->
                  <!-- IF {FORUMS_EDITPOST_SFS} -->
                  {FORUMS_EDITPOST_SFS}
                  <!-- ENDIF -->
                </div>
              </div>
              <!-- ENDIF -->
              <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} -->
              <!-- Поле "Файлы" -->
              <div class="col-12">
                <label for="postFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                <div class="d-flex flex-wrap gap-2">
                  <!-- IF {FORUMS_EDITPOST_PFS} -->
                  <span class="me-2">{FORUMS_EDITPOST_PFS}</span>
                  <!-- ENDIF -->
                  <!-- IF {FORUMS_EDITPOST_SFS} -->
                  {FORUMS_EDITPOST_SFS}
                  <!-- ENDIF -->
                </div>
              </div>
              <!-- ENDIF -->
              <!-- Таймаут редактирования -->
              <!-- IF {FORUMS_EDITPOST_EDIT_TIMEOUT} -->
              <div class="col-12">
                <p class="small text-muted">{PHP.L.forums_edittimeoutnote} {FORUMS_EDITPOST_EDIT_TIMEOUT}</p>
              </div>
              <!-- ENDIF -->

              <!-- BEGIN: POLL -->
              <!-- Блок опроса -->
              <div class="col-12">
                <div class="row g-3">
                  <!-- Левая колонка с заголовком -->
                  <div class="col-lg-3 col-12">
                    <label class="form-label d-inline-flex align-items-center">
                      <!-- Кнопка для раскрытия опроса -->
                      <button class="btn btn-outline-danger" type="button" data-bs-toggle="collapse" data-bs-target="#toggle-usage">{PHP.L.Poll}</button>
                      <!-- Иконка с подсказкой -->
                      <span class="ms-2 text-primary" data-bs-toggle="tooltip" title="{PHP.L.Poll}">
                        <i class="fa-solid fa-circle-question fa-lg"></i>
                      </span>
                    </label>
                  </div>

                  <!-- Правая колонка с содержимым -->
                  <div class="col-lg-9 col-12">
                    <!-- Скрываемый блок опроса -->
                    <div id="toggle-usage" class="collapse">
                      <!-- Подключение скриптов для опроса -->
                      <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                      <script type="text/javascript">
                        var ansMax = {PHP.cfg.polls.max_options_polls};
                      </script>
                      <!-- Поле ID опроса -->
                      <div class="form-group mb-3">{EDIT_POLL_IDFIELD}</div>
                      <!-- Подзаголовок -->
                      <div class="mb-3">
                        <span class="small text-muted">{PHP.L.poll}:</span>
                      </div>
                      <!-- Текст опроса -->
                      <div class="mb-3">{EDIT_POLL_TEXT}</div>
                      <hr class="my-3">
                      <!-- Заголовок опций -->
                      <div class="mb-3">{PHP.L.Options}:</div>
                      <!-- BEGIN: OPTIONS -->
                      <!-- Блок каждой опции -->
                      <div class="mb-3">
                        <div class="polloptiondiv position-relative">
                          {EDIT_POLL_OPTION_TEXT}
                          <!-- Кнопка удаления опции -->
                          <button name="deloption" value="x" type="button" class="deloption btn btn-warning btn-sm position-absolute top-50 end-0 translate-middle-y me-2" style="display:none;">
                            <i class="fa-solid fa-trash"></i>
                          </button>
                        </div>
                      </div>
                      <!-- END: OPTIONS -->
                      <!-- Кнопка добавления опции -->
                      <div class="mb-3">
                        <input id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn btn-outline-secondary shadow-sm" style="display:none;" />
                      </div>
                      <!-- Множественный выбор -->
                      <div>{EDIT_POLL_MULTIPLE}</div>
                    </div>
                  </div>

                  <!-- BEGIN: EDIT -->
                  <!-- Дополнительные действия для редактирования -->
                  <div class="col-lg-3 col-12">
                    <!-- Пустая колонка для выравнивания -->
                  </div>
                  <div class="col-lg-9 col-12">
                    <div class="form-group">{EDIT_POLL_LOCKED} {EDIT_POLL_RESET} {EDIT_POLL_DELETE}</div>
                  </div>
                  <!-- END: EDIT -->
                </div>
              </div>
              <!-- END: POLL -->

              <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
              <!-- Поле "Теги" -->
              <div class="col-12">
                <label for="tags" class="form-label fw-semibold">{PHP.L.Tags}:</label>
                <div class="input-group has-validation">
                  {FORUMS_EDITPOST_FORM_TAGS}
                </div>
                <small class="form-text text-muted">{FORUMS_EDITPOST_TOP_TAGS_HINT}</small>
              </div>
              <!-- END: FORUMS_EDITPOST_TAGS -->

              <!-- Кнопка отправки -->
              <div class="col-12">
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                  <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- END: MAIN -->