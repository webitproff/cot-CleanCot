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
  <!-- Контейнер среднего размера с вертикальным выравниванием -->
  <div class="container-xl d-flex flex-column justify-content-center">
    <!-- Сетка для содержимого -->
    <div class="row">
      <!-- Центрированная колонка -->
      <div class="col-12 mx-auto">
        <!-- Сетка с двумя колонками -->
        <div class="row">
          <!-- Левая колонка с навигацией и фильтрами -->
          <div class="col-md-3 mb-3">
            <!-- Карточка для подзаголовка и навигации -->
            <div class="card h-100">
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
                <!-- Заголовок фильтров -->
                <p class="fw-semibold mb-2">{PHP.L.Filter}:</p>
                <!-- Список фильтров -->
                <ul class="nav flex-column">
                  <!-- Фильтр непрочитанных -->
                  <li class="nav-item">{PM_FILTER_UNREAD}</li>
                  <!-- Фильтр избранных -->
                  <li class="nav-item">{PM_FILTER_STARRED}</li>
                  <!-- Фильтр всех сообщений -->
                  <li class="nav-item">{PM_FILTER_ALL}</li>
                </ul>
              </div>
            </div>
          </div>

          <!-- Правая колонка со списком сообщений -->
          <div class="col-md-9">
            <h2 class="h5 mb-0">{PM_PAGETITLE}</h2>
            <p class="small text-muted mb-3">{PM_SUBTITLE}</p>
            <!-- Форма управления сообщениями -->
            <form action="{PM_FORM_UPDATE}" method="post" name="update" id="update" class="ajax">
              <!-- Список сообщений -->
              <div class="list-group">
                <!-- Заголовки списка -->
                <div class="list-group-item d-flex flex-column flex-md-row align-items-center bg-light">
                  <!-- Чекбокс для выбора всех сообщений -->
                  <div class="col-md-1 text-center mb-2 mb-md-0">
                    <!-- IF {PHP.cfg.jquery} -->
                    <!-- Чекбокс с jQuery для выбора всех -->
                    <input class="form-check-input" type="checkbox" value="{PHP.L.pm_Selectall}/{PHP.L.pm_Unselectall}" onclick="$('.checkbox').attr('checked', this.checked);" />
                    <!-- ENDIF -->
                  </div>
                  <!-- Статус сообщения -->
                  <div class="col-md-1 text-center mb-2 mb-md-0">{PHP.L.Status}</div>
                  <!-- Звёздочка (избранное) -->
                  <div class="col-md-1 text-center mb-2 mb-md-0">
                    <div class="pm-star pm-star-readonly">
                      <a href="#" title="{PHP.L.pm_starred}"><i class="fa-solid fa-star"></i></a>
                    </div>
                  </div>
                  <!-- Тема сообщения (показываем только на md и больше) -->
                  <div class="col-md-4 text-md-start mb-2 mb-md-0 d-none d-md-block">{PHP.L.Subject}</div>
                  <!-- Отправитель/Получатель (показываем только на md и больше) -->
                  <div class="col-md-2 text-center mb-2 mb-md-0 d-none d-md-block">{PM_SENT_TYPE}</div>
                  <!-- Дата (показываем только на md и больше) -->
                  <div class="col-md-2 text-center mb-2 mb-md-0 d-none d-md-block">{PHP.L.Date}</div>
                  <!-- Действия (показываем только на md и больше) -->
                  <div class="col-md-1 text-center mb-2 mb-md-0 d-none d-md-block">{PHP.L.Action}</div>
                </div>

                <!-- BEGIN: PM_ROW -->
                <!-- Элемент списка сообщений -->
                <div class="list-group-item d-flex flex-column flex-md-row align-items-start align-items-md-center {PM_ROW_ODDEVEN}">
                  <!-- Чекбокс для выбора сообщения -->
                  <div class="col-md-1 text-center mb-2 mb-md-0">
                    <input class="form-check-input" type="checkbox" class="checkbox" name="msg[{PM_ROW_ID}]" />
                  </div>
                  <!-- Иконка статуса -->
                  <div class="col-md-1 text-center mb-2 mb-md-0">{PM_ROW_ICON_STATUS}</div>
                  <!-- Звёздочка (избранное) -->
                  <div class="col-md-1 text-center mb-2 mb-md-0">{PM_ROW_STAR}</div>
                  <!-- Тема и описание -->
                  <div class="col-md-4 text-md-start mb-2 mb-md-0">
                    <p class="fw-semibold mb-1 text-truncate">{PM_ROW_TITLE}</p>
                    <p class="small text-muted mb-0 text-truncate">{PM_ROW_DESC}</p>
                  </div>
                  <!-- Имя пользователя -->
                  <div class="col-md-2 text-center mb-2 mb-md-0">{PM_ROW_USER_NAME}</div>
                  <!-- Дата отправки -->
                  <div class="col-md-2 text-center mb-2 mb-md-0">{PM_ROW_DATE}</div>
                  <!-- Действия (редактировать/удалить) -->
                  <div class="col-md-1 text-center mb-2 mb-md-0">{PM_ROW_ICON_EDIT} {PM_ROW_ICON_DELETE_CONFIRM}</div>
                </div>
                <!-- END: PM_ROW -->

                <!-- BEGIN: PM_ROW_EMPTY -->
                <!-- Если сообщений нет -->
                <div class="list-group-item text-center">
                  {PHP.L.None}
                </div>
                <!-- END: PM_ROW_EMPTY -->
              </div>

              <!-- Если есть сообщения -->
              <!-- IF {PHP.jj} > 0 -->
              <!-- Управление выбранными сообщениями -->
              <div class="mt-3">
                <!-- Выбор действия -->
                <div class="d-flex flex-wrap align-items-center gap-2">
                  <span class="fw-semibold">{PHP.L.pm_selected}:</span>
                  <select name="action" class="form-select w-auto" size="1">
                    <option value="delete">{PHP.L.Delete}</option>
                    <option value="star" selected="selected">{PHP.L.pm_putinstarred}</option>
                  </select>
                  <!-- Кнопка подтверждения -->
                  <button type="submit" name="delete" class="btn btn-primary">{PHP.L.Confirm}</button>
                </div>
              </div>

              <!-- Навигация по страницам -->
              <!-- IF {PAGINATION} -->
              <nav class="mt-3" aria-label="Pagination">
                <ul class="pagination justify-content-center">
                  {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                </ul>
              </nav>
              <!-- ENDIF -->
              <!-- ENDIF -->
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