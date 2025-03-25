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
        {PMSEND_TITLE}
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
              <li class="list-group-item">{PMSEND_INBOX}</li>
              <!-- Ссылка на отправленные -->
              <li class="list-group-item">{PMSEND_SENTBOX}</li>
              <!-- Ссылка на новое сообщение -->
              <li class="list-group-item">{PMSEND_SENDNEWPM}</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Правая колонка с формой отправки -->
      <div class="col-md-8">
        <!-- Карточка с формой -->
        <div class="card">
          <!-- Тело карточки -->
          <div class="card-body">
            <!-- Подзаголовок -->
            <p class="small text-muted mb-4">{PHP.L.pmsend_subtitle}</p>
            <!-- Подключение шаблона с предупреждениями -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

            <!-- Форма отправки сообщения -->
            <form action="{PMSEND_FORM_SEND}" method="post" name="newmessage" id="mewmessage" class="needs-validation" novalidate>
              <!-- Сетка с отступами между элементами -->
              <div class="row g-3">
                <!-- BEGIN: PMSEND_USERLIST -->
                <!-- Поле "Получатели" -->
                <div class="col-12">
                  <label for="toUser" class="form-label fw-semibold">{PHP.L.Recipients}:</label>
                  <div class="input-group has-validation">
                    {PMSEND_FORM_TOUSER}
                  </div>
                  <!-- Подсказка для получателей -->
                  <small class="form-text text-muted">{PHP.L.pm_sendmessagetohint}</small>
                </div>
                <!-- END: PMSEND_USERLIST -->

                <!-- Поле "Тема" -->
                <div class="col-12">
                  <label for="pmTitle" class="form-label fw-semibold">{PHP.L.Subject}:</label>
                  <div class="input-group has-validation">
                    {PMSEND_FORM_TITLE}
                  </div>
                </div>

                <!-- Поле "Текст сообщения" -->
                <div class="col-12">
                  <label for="pmText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label>
                  <div class="input-group has-validation">
                    {PMSEND_FORM_TEXT}
                  </div>
                </div>

                <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} -->
                <!-- Поле "Файлы" -->
                <div class="col-12">
                  <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                  <div class="d-flex flex-wrap gap-2">
                    <!-- Мои файлы -->
                    {PMSEND_FORM_PFS}
                    <!-- Файловый архив сайта -->
                    {PMSEND_FORM_SFS}
                  </div>
                </div>
                <!-- ENDIF -->
                <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
                <!-- Поле "Файлы" -->
                <div class="col-12">
                  <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                  <div class="d-flex flex-wrap gap-2">
                    <!-- Мои файлы -->
                    {PMSEND_FORM_PFS}
                    <!-- Файловый архив сайта -->
                    {PMSEND_FORM_SFS}
                  </div>
                </div>
                <!-- ENDIF -->
                <!-- Чекбокс "Не сохранять в отправленных" -->
                <div class="col-12">
                  <div class="form-check mb-3">
                    {PMSEND_FORM_NOT_TO_SENTBOX}
                  </div>
                </div>

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
</div>

<!-- BEGIN: AFTER_AJAX -->
<!-- Закрывающий тег для AJAX-контента -->
</div>
<!-- END: AFTER_AJAX -->
<!-- END: MAIN -->