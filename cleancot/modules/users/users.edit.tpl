<!-- BEGIN: MAIN -->
<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <!-- Контейнер для хлебных крошек -->
  <div class="container py-2">
    <!-- Навигация по хлебным крошкам -->
    <nav aria-label="breadcrumb">
      <!-- Список хлебных крошек -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {USERS_EDIT_BREADCRUMBS}
      </ol>
    </nav>
  </div>
</div>

<!-- Основной контейнер с серым фоном -->
<div class="bg-body-secondary py-4">
  <!-- Контейнер среднего размера с вертикальным выравниванием -->
  <div class="container-md d-flex flex-column justify-content-center">
    <!-- Сетка для формы -->
    <div class="row">
      <!-- Центрированная колонка -->
      <div class="col-12 col-md-10 mx-auto">
        <!-- Карточка с формой -->
        <div class="card mt-4 mb-4">
          <!-- Заголовок карточки -->
          <div class="card-header bg-warning text-dark">
            <!-- Заголовок страницы -->
            <h2 class="h5 mb-0">{PHP.L.users_edit_title} #{USERS_EDIT_ID}</h2>
          </div>
          <!-- Тело карточки -->
          <div class="card-body">
            <!-- Подключение шаблона с предупреждениями -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            <!-- Форма редактирования пользователя -->
            <form action="{USERS_EDIT_SEND}" method="post" name="useredit" enctype="multipart/form-data" class="needs-validation" novalidate>
              <!-- Скрытое поле с ID пользователя -->
              <input type="hidden" name="id" value="{USERS_EDIT_ID}" />
              <!-- Сетка с отступами между элементами -->
              <div class="row g-3">
                <!-- Поле "ID пользователя" -->
                <div class="col-12">
                  <label for="userId" class="form-label fw-semibold">{PHP.L.users_id}:</label>
                  <div class="form-control-plaintext">#{USERS_EDIT_ID}</div>
                </div>

                <!-- Поле "Имя пользователя" -->
                <div class="col-12">
                  <label for="userName" class="form-label fw-semibold">{PHP.L.Username}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_NAME}
                  </div>
                </div>

                <!-- Поле "Группы пользователя" -->
                <div class="col-12">
                  <label for="userGroups" class="form-label fw-semibold">{PHP.L.Groupsmembership}:</label>
                  <div class="form-control-plaintext">
                    {PHP.L.Maingroup}:<br />
                    <!-- Иконка стрелки вниз вместо PHP.R.icon -->
                    <i class="fa-solid fa-arrow-down d-block my-1"></i>
                    {USERS_EDIT_GROUPS}
                  </div>
                </div>

                <!-- Поле "Страна"  -->
                <div class="col-12">
                  <label for="userCountry" class="form-label fw-semibold">{PHP.L.Country}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_COUNTRY}
                  </div>
                </div>
                <div class="col-12">
                  <label for="userCountry" class="form-label fw-semibold">{PHP.L.Country}:</label>
                  <div class="input-group has-validation" id="users-ban-expire">
                    {USERS_EDIT_COUNTRY}
                  </div>
                </div>
                <!-- Поле "Часовой пояс" -->
                <div class="col-12">
                  <label for="userTimezone" class="form-label fw-semibold">{PHP.L.Timezone}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_TIMEZONE}
                  </div>
                </div>

                <!-- Поле "Тема оформления" -->
                <div class="col-12">
                  <label for="userTheme" class="form-label fw-semibold">{PHP.L.Theme}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_THEME}
                  </div>
                </div>

                <!-- Поле "Язык" -->
                <div class="col-12">
                  <label for="userLang" class="form-label fw-semibold">{PHP.L.Language}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_LANG}
                  </div>
                </div>

                <!-- Поле "Аватар" (если есть) -->
                <!-- IF {USERS_EDIT_AVATAR} -->
                <div class="col-12">
                  <label for="userAvatar" class="form-label fw-semibold">{PHP.L.Avatar}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_AVATAR}
                  </div>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Подпись" (если есть) -->
                <!-- IF {USERS_EDIT_SIGNATURE} -->
                <div class="col-12">
                  <label for="userSignature" class="form-label fw-semibold">{PHP.L.Signature}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_SIGNATURE}
                  </div>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Фото" (если есть) -->
                <!-- IF {USERS_EDIT_PHOTO} -->
                <div class="col-12">
                  <label for="userPhoto" class="form-label fw-semibold">{PHP.L.Photo}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_PHOTO}
                  </div>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Новый пароль" -->
                <div class="col-12">
                  <label for="userNewpass" class="form-label fw-semibold">{PHP.L.users_newpass}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_NEWPASS}
                  </div>
                  <!-- Подсказка для пароля -->
                  <small class="form-text text-muted">{PHP.L.users_newpasshint1}</small>
                </div>

                <!-- Поле "Email" -->
                <div class="col-12">
                  <label for="userEmail" class="form-label fw-semibold">{PHP.L.Email}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_EMAIL}
                  </div>
                </div>

                <!-- Поле "Скрыть email" -->
                <div class="col-12">
                  <label for="userHideEmail" class="form-label fw-semibold">{PHP.L.users_hideemail}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_HIDEEMAIL}
                  </div>
                </div>

                <!-- Поле "Уведомления PM" (если модуль PM активен) -->
                <!-- IF {PHP|cot_module_active('pm')} -->
                <div class="col-12">
                  <label for="userPmNotify" class="form-label fw-semibold">{PHP.L.users_pmnotify}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_PMNOTIFY}
                  </div>
                  <!-- Подсказка для уведомлений -->
                  <small class="form-text text-muted">{PHP.themelang.usersedit.PMnotifyhint}</small>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Дата рождения" -->
                <div class="col-12">
                  <label for="userBirthdate" class="form-label fw-semibold">{PHP.L.Birthdate}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_BIRTHDATE}
                  </div>
                </div>

                <!-- Поле "Пол" -->
                <div class="col-12">
                  <label for="userGender" class="form-label fw-semibold">{PHP.L.Gender}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_GENDER}
                  </div>
                </div>

                <!-- Поле "Подпись" (текст) -->
                <div class="col-12">
                  <label for="userText" class="form-label fw-semibold">{PHP.L.Signature}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_TEXT}
                  </div>
                </div>

                <!-- Поле "Дата регистрации" -->
                <div class="col-12">
                  <label for="userRegdate" class="form-label fw-semibold">{PHP.L.Registered}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_REGDATE}
                  </div>
                </div>

                <!-- Поле "Последний вход" -->
                <div class="col-12">
                  <label for="userLastlog" class="form-label fw-semibold">{PHP.L.Lastlogged}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_LASTLOG}
                  </div>
                </div>

                <!-- Поле "Последний IP" -->
                <div class="col-12">
                  <label for="userLastip" class="form-label fw-semibold">{PHP.L.users_lastip}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_LASTIP}
                  </div>
                </div>

                <!-- Поле "Счётчик входов" -->
                <div class="col-12">
                  <label for="userLogcount" class="form-label fw-semibold">{PHP.L.users_logcounter}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_LOGCOUNT}
                  </div>
                </div>

                <!-- Поле "Удалить пользователя" -->
                <div class="col-12">
                  <label for="userDelete" class="form-label fw-semibold">{PHP.L.users_deleteuser}:</label>
                  <div class="input-group has-validation">
                    {USERS_EDIT_DELETE}
                  </div>
                </div>

                <!-- Кнопка отправки формы -->
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
</div>
<!-- END: MAIN -->