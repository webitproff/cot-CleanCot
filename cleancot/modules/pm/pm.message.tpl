<!-- BEGIN: MAIN -->

<!-- BEGIN: BEFORE_AJAX -->
<!-- Контейнер для AJAX-контента -->
<div id="ajaxBlock">
<!-- END: BEFORE_AJAX -->

<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <!-- Контейнер для хлебных крошек -->
  <div class="container py-2">
    <!-- Навигация по хлебным крошкам -->
    <nav aria-label="breadcrumb">
      <!-- Список хлебных крошек -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {PM_PAGETITLE}
      </ol>
    </nav>
  </div>
</div>

<!-- Основной контейнер с серым фоном -->
<div class="bg-body-secondary py-4">
  <!-- Контейнер с вертикальным выравниванием -->
  <div class="container-xl">
    <!-- Сетка для содержимого -->
    <div class="row g-4">
      <!-- Левая колонка с навигацией -->
      <div class="col-md-4">
        <!-- Карточка для навигации -->
        <div class="card">
          <!-- Тело карточки -->
          <div class="card-body">
            <!-- Навигация (список папок) -->
            <ul class="list-group list-group-flush">
              <!-- Ссылка на входящие -->
              <li class="list-group-item">{PM_INBOX}</li>
              <!-- Ссылка на отправленные -->
              <li class="list-group-item">{PM_SENTBOX}</li>
              <!-- Ссылка на новое сообщение -->
              <li class="list-group-item">{PM_SENDNEWPM}</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Правая колонка с содержимым сообщения -->
      <div class="col-md-8">
        <!-- Карточка с сообщением -->
        <div class="card mb-3">
          <!-- Тело карточки -->
          <div class="card-body">
            <!-- Подзаголовок -->
            <p class="small text-muted mb-4">{PM_SUBTITLE}</p>

            <!-- Сетка для информации о сообщении -->
            <div class="row g-2">
              <!-- Тема сообщения -->
              <div class="col-12">
                <span class="fw-semibold">{PHP.L.Subject}:</span>
                <span class="ms-2">{PM_TITLE}</span>
              </div>
              <!-- Отправитель/Получатель -->
              <div class="col-12">
                <span class="fw-semibold">{PM_SENT_TYPE}:</span>
                <span class="ms-2">{PM_USER_NAME}</span>
              </div>
              <!-- Дата -->
              <div class="col-12">
                <span class="fw-semibold">{PHP.L.Date}:</span>
                <span class="ms-2">{PM_DATE}</span>
              </div>
              <!-- Текст сообщения -->
              <div class="col-12">
                <span class="fw-semibold">{PHP.L.Message}:</span>
                <div class="mt-2">{PM_TEXT}</div>
              </div>
              <!-- Действия -->
              <div class="col-12">
                <span class="fw-semibold">{PHP.L.Action}:</span>
                <div class="d-flex flex-wrap gap-2 mt-2">
                  {PM_QUOTE} {PM_EDIT} {PM_DELETE} {PM_HISTORY}
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- BEGIN: REPLY -->
        <div class="card mb-3">
          <!-- Тело карточки -->
          <div class="card-body">
            <!-- Подзаголовок -->
            <h3 class="mt-4 mb-3">{PHP.L.pm_replyto}</h3>
            <!-- Форма ответа -->
            <form action="{PM_FORM_SEND}" method="post" name="newlink" class="needs-validation" novalidate>
              <!-- Сетка для полей формы -->
              <div class="row g-2">
                <!-- Поле "Тема" -->
                <div class="col-12">
                  <label for="pmTitle" class="form-label fw-semibold">{PHP.L.Subject}:</label>
                  <div class="input-group has-validation">
                    {PM_FORM_TITLE}
                  </div>
                </div>
                <!-- Поле "Текст сообщения" -->
                <div class="col-12">
                  <label for="pmText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label>
                  <div class="input-group has-validation">
                    {PM_FORM_TEXT}
                  </div>
                </div>
                <!-- IF {PHP|cot_module_active('files')} -->
                <!-- Поле "Файлы" -->
                <div class="col-12">
                  <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                  <div class="d-flex flex-wrap gap-2">
                    <!-- Мои файлы -->
                    {PM_FORM_PFS}
                    <!-- Файловый архив сайта -->
                    {PM_FORM_SFS}
                  </div>
                </div>
                <!-- ENDIF -->
                <!-- Чекбокс "Не сохранять в отправленных" -->
                <div class="col-12">
                  <div class="form-check mb-3">
                    {PM_FORM_NOT_TO_SENTBOX}
                  </div>
                </div>
                <!-- Кнопка отправки -->
                <div class="col-12">
                  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button type="submit" class="btn btn-primary">{PHP.L.Reply}</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
        <!-- END: REPLY -->

        <!-- История сообщений -->
        <div id="ajaxHistory">
          <!-- BEGIN: HISTORY -->
          <div class="card mb-3">
            <!-- Тело карточки -->
            <div class="card-body">
              <h3 class="mt-4 mb-3">{PHP.L.pm_messagehistory}</h3>
              <div class="list-group">
                <!-- BEGIN: PM_ROW -->
                <!-- Элемент истории -->
                <div class="list-group-item d-flex flex-column flex-md-row {PM_ROW_ODDEVEN}">
                  <div class="col-md-3 mb-2 mb-md-0">
                    <p class="fw-semibold mb-1">{PM_ROW_USER_NAME}</p>
                    <p class="small text-muted mb-0">{PM_ROW_DATE}</p>
                  </div>
                  <div class="col-md-9">{PM_ROW_TEXT}</div>
                </div>
                <!-- END: PM_ROW -->
                <!-- BEGIN: PM_ROW_EMPTY -->
                <!-- Если истории нет -->
                <div class="list-group-item text-center py-4">
                  {PHP.L.None}
                </div>
                <!-- END: PM_ROW_EMPTY -->
              </div>
              <!-- Навигация по страницам -->
              <!-- IF {PAGINATION} -->
              <nav class="mt-3" aria-label="Pagination">
                <ul class="pagination justify-content-center">
                  {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                </ul>
              </nav>
              <!-- ENDIF -->
            </div>
          </div>
          <!-- END: HISTORY -->
        </div>
      </div>
    </div>
  </div>
</div>

<!-- BEGIN: AFTER_AJAX -->
<!-- Закрывающий тег для AJAX-контента -->
</div>
<!-- END: AFTER_AJAX -->
<!-- END: MAIN -->