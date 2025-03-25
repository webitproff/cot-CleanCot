<!-- BEGIN: MAIN -->

<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {FORUMS_NEWTOPIC_BREADCRUMBS}
      </ol>
    </nav>
  </div>
</div>

<!-- Основной контейнер с серым фоном -->
<div class="bg-body-secondary py-4">
  <div class="container-md d-flex flex-column justify-content-center">
    <div class="col-12 col-md-10 mx-auto">
      <!-- Карточка с формой -->
      <div class="card">
        <div class="card-body">
          <!-- Подключение шаблона с предупреждениями -->
          {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

          <!-- Форма создания новой темы -->
          <form action="{FORUMS_NEWTOPIC_FORM_ACTION}" method="post" name="newtopic" class="needs-validation" novalidate>
            <div class="row g-3">
              <!-- Поле "Название темы" -->
              <div class="col-12">
                <label for="topicTitle" class="form-label fw-semibold">{PHP.L.Title}:</label>
                <div class="input-group has-validation">
                  {FORUMS_NEWTOPIC_FORM_TITLE}
                </div>
              </div>

              <!-- Поле "Описание" -->
              <div class="col-12">
                <label for="topicDesc" class="form-label fw-semibold">{PHP.L.Description}:</label>
                <div class="input-group has-validation">
                  {FORUMS_NEWTOPIC_FORM_DESCRIPTION}
                </div>
              </div>

              <!-- Экстраполе "YouTube" -->
			  <!-- IF {FORUMS_NEWTOPIC_FORM_TOPIC_XTR_FLD_YOUTUBE} -->
              <div class="col-12">
                <label for="youtubeField" class="form-label fw-semibold">{FORUMS_NEWTOPIC_FORM_TOPIC_XTR_FLD_YOUTUBE_TITLE}:</label>
                <div class="input-group has-validation">
                  {FORUMS_NEWTOPIC_FORM_TOPIC_XTR_FLD_YOUTUBE}
                </div>
              </div>
				<!-- ENDIF -->
              <!-- BEGIN: PRIVATE -->
              <!-- Приватная тема -->
              <div class="col-12">
                <label for="privateTopic" class="form-label fw-semibold">{PHP.L.forums_privatetopic1}:</label>
                <div class="d-flex align-items-center gap-2">
                  {FORUMS_NEWTOPIC_FORM_PRIVATE}
                  <span class="small text-muted">({PHP.L.forums_privatetopic2})</span>
                </div>
              </div>
              <!-- END: PRIVATE -->

              <!-- Поле "Текст поста" и файлы -->
              <div class="col-12">
                <label for="postText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label>
                <div class="input-group has-validation">
                  {FORUMS_NEWTOPIC_FORM_TEXT}
                </div>
                <!-- Файлы -->
				<!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
                <div class="d-flex flex-wrap gap-2 mt-3">
                  <!-- IF {FORUMS_NEWTOPIC_PFS} -->
                  <span class="me-2">{FORUMS_NEWTOPIC_PFS}</span>
                  <!-- ENDIF -->
                  <!-- IF {FORUMS_NEWTOPIC_SFS} -->
                  {FORUMS_NEWTOPIC_SFS}
                  <!-- ENDIF -->
                </div>
				<!-- ENDIF -->
				<!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} -->
                <div class="d-flex flex-wrap gap-2 mt-3">
                  <!-- IF {FORUMS_NEWTOPIC_PFS} -->
                  <span class="me-2">{FORUMS_NEWTOPIC_PFS}</span>
                  <!-- ENDIF -->
                  <!-- IF {FORUMS_NEWTOPIC_SFS} -->
                  {FORUMS_NEWTOPIC_SFS}
                  <!-- ENDIF -->
                </div>
				<!-- ENDIF -->
                <!-- Таймаут редактирования -->
                <!-- IF {FORUMS_NEWTOPIC_EDIT_TIMEOUT} -->
                <p class="small text-muted mt-3">{PHP.L.forums_edittimeoutnote} {FORUMS_NEWTOPIC_EDIT_TIMEOUT}</p>
                <!-- ENDIF -->
              </div>

              <!-- BEGIN: POLL -->
              <!-- Блок опроса -->
              <div class="col-12">
                <div class="row g-3">
                  <!-- Левая колонка с заголовком -->
                  <div class="col-lg-3 col-12">
                    <label class="form-label d-inline-flex align-items-center">
                      <button class="btn btn-outline-danger" type="button" data-bs-toggle="collapse" data-bs-target="#toggle-usage">{PHP.L.Poll}</button>
                      <span class="ms-2 text-primary" data-bs-toggle="tooltip" title="{PHP.L.Poll}">
                        <i class="fa-solid fa-circle-question fa-lg"></i>
                      </span>
                    </label>
                  </div>

                  <!-- Правая колонка с содержимым -->
                  <div class="col-lg-9 col-12">
                    <div id="toggle-usage" class="collapse">
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
                      <div class="mb-3">
                        <div class="polloptiondiv position-relative">
                          {EDIT_POLL_OPTION_TEXT}
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
                </div>
              </div>
              <!-- END: POLL -->

              <!-- BEGIN: FORUMS_NEWTOPIC_TAGS -->
              <!-- Поле "Теги" -->
              <div class="col-12">
                <label for="tags" class="form-label fw-semibold">{PHP.L.Tags}:</label>
                <div class="input-group has-validation">
                  {FORUMS_NEWTOPIC_FORM_TAGS}
                </div>
                <small class="form-text text-muted">({FORUMS_NEWTOPIC_TOP_TAGS_HINT})</small>
              </div>
              <!-- END: FORUMS_NEWTOPIC_TAGS -->

              <!-- Кнопка отправки -->
              <div class="col-12">
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                  <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
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