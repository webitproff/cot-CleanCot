<!-- BEGIN: MAIN -->
<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <!-- Контейнер для хлебных крошек -->
  <div class="container py-2">
    <!-- Навигация по хлебным крошкам -->
    <nav aria-label="breadcrumb">
      <!-- Список хлебных крошек -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {USERS_PROFILE_BREADCRUMBS}
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
            <!-- Заголовок профиля пользователя -->
            <h2 class="h5 mb-0">{USERS_PROFILE_TITLE}</h2>
          </div>
          <!-- Тело карточки -->
          <div class="card-body">
            <!-- Подключение шаблона с предупреждениями -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            <!-- Форма редактирования профиля -->
            <form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile" class="needs-validation" novalidate>
              <!-- Скрытое поле с ID пользователя -->
              <input type="hidden" name="userid" value="{USERS_PROFILE_ID}" />
              <!-- Сетка с отступами между элементами -->
              <div class="row g-3">
                <!-- Поле "Имя пользователя" -->
                <div class="col-12">
                  <label for="profileName" class="form-label fw-semibold">{PHP.L.Username}:</label>
                  <div class="form-control-plaintext">{USERS_PROFILE_NAME}</div>
                </div>

                <!-- Поле "Группы пользователя" -->
                <div class="col-12">
                  <label for="profileGroups" class="form-label fw-semibold">{PHP.L.Groupsmembership}:</label>
                  <div class="form-control-plaintext" id="usergrouplist">
                    {USERS_PROFILE_GROUPS}
                  </div>
                </div>

                <!-- Поле "Дата регистрации" -->
                <div class="col-12">
                  <label for="profileRegdate" class="form-label fw-semibold">{PHP.L.Registered}:</label>
                  <div class="form-control-plaintext">{USERS_PROFILE_REGDATE}</div>
                </div>

                <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
                <!-- Поле "Email" с возможностью изменения -->
                <div class="col-12">
                  <label for="profileEmail" class="form-label fw-semibold">{PHP.L.Email}:</label>
                  <div class="form-control-plaintext" id="emailtd">
                    <!-- Блок с текущим email -->
                    <div class="w-50 float-start">
                      {PHP.L.Email}:<br />{USERS_PROFILE_EMAIL}
                    </div>
                    <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
                    <!-- JavaScript для показа заметок об email -->
                    <script type="text/javascript">
                      //<![CDATA[
                      $(document).ready(function () {
                        $("#emailnotes").hide();
                        $("#emailtd").click(function () {
                          $("#emailnotes").slideDown();
                        });
                      });
                      //]]>
                    </script>
                    <!-- Поле ввода пароля для смены email -->
                    <div>
                      {PHP.themelang.usersprofile_Emailpassword}:<br />{USERS_PROFILE_EMAILPASS}
                    </div>
                    <!-- Заметки об email -->
                    <div class="small" id="emailnotes">{PHP.themelang.usersprofile_Emailnotes}</div>
                    <!-- END: USERS_PROFILE_EMAILPROTECTION -->
                  </div>
                </div>
                <!-- END: USERS_PROFILE_EMAILCHANGE -->

                <!-- Поле "Скрыть email" -->
                <div class="col-12">
                  <label for="profileHideEmail" class="form-label fw-semibold">{PHP.L.users_hideemail}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_HIDEEMAIL}
                  </div>
                </div>

                <!-- Поле "Уведомления PM" (если модуль PM активен) -->
                <!-- IF {PHP|cot_module_active('pm')} -->
                <div class="col-12">
                  <label for="profilePmNotify" class="form-label fw-semibold">{PHP.L.users_pmnotify}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_PMNOTIFY}
                  </div>
                  <!-- Подсказка для уведомлений -->
                  <small class="form-text text-muted">{PHP.L.users_pmnotifyhint}</small>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Тема оформления" (если не принудительная тема) -->
                <!-- IF !{PHP.cfg.forcedefaulttheme} -->
                <div class="col-12">
                  <label for="profileTheme" class="form-label fw-semibold">{PHP.L.Theme}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_THEME}
                  </div>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Язык" -->
                <div class="col-12">
                  <label for="profileLang" class="form-label fw-semibold">{PHP.L.Language}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_LANG}
                  </div>
                </div>

                <!-- Поле "Страна" -->
                <div class="col-12">
                  <label for="profileCountry" class="form-label fw-semibold">{PHP.L.Country}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_COUNTRY}
                  </div>
                </div>

                <!-- Поле "Часовой пояс" -->
                <div class="col-12">
                  <label for="profileTimezone" class="form-label fw-semibold">{PHP.L.Timezone}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_TIMEZONE}
                  </div>
                </div>

                <!-- Поле "Дата рождения" -->
                <div class="col-12">
                  <label for="profileBirthdate" class="form-label fw-semibold">{PHP.L.Birthdate}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_BIRTHDATE}
                  </div>
                </div>

                <!-- Поле "Пол" -->
                <div class="col-12">
                  <label for="profileGender" class="form-label fw-semibold">{PHP.L.Gender}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_GENDER}
                  </div>
                </div>

                <!-- Поле "Аватар" (если есть) -->
                <!-- IF {USERS_PROFILE_AVATAR} -->
                <div class="col-12">
                  <label for="profileAvatar" class="form-label fw-semibold">{PHP.L.Avatar}:</label>
                  <div class="form-control-plaintext">{USERS_PROFILE_AVATAR}</div>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Фото" (если есть) -->
                <!-- IF {USERS_PROFILE_PHOTO} -->
                <div class="col-12">
                  <label for="profilePhoto" class="form-label fw-semibold">{PHP.L.Photo}:</label>
                  <div class="form-control-plaintext">{USERS_PROFILE_PHOTO}</div>
                </div>
                <!-- ENDIF -->

                <!-- Поле "Подпись" -->
                <div class="col-12">
                  <label for="profileText" class="form-label fw-semibold">{PHP.L.Signature}:</label>
                  <div class="input-group has-validation">
                    {USERS_PROFILE_TEXT}
                  </div>
                </div>

                <!-- Поле "Смена пароля" -->
                <div class="col-12" id="change-password">
                  <label for="profileOldpass" class="form-label fw-semibold">{PHP.L.users_newpass}:</label>
                  <!-- Подсказка для нового пароля -->
                  <small class="form-text text-muted mb-2">{PHP.L.users_newpasshint1}</small>
                  <!-- Поле текущего пароля -->
                  <div class="input-group has-validation mb-2">
                    {USERS_PROFILE_OLDPASS}
                  </div>
                  <!-- Подсказка для текущего пароля -->
                  <small class="form-text text-muted mb-2">{PHP.L.users_oldpasshint}</small>
                  <!-- Поля нового пароля -->
                  <div class="input-group has-validation mb-2">
                    {USERS_PROFILE_NEWPASS1}
                  </div>
                  <div class="input-group has-validation mb-2">
                    {USERS_PROFILE_NEWPASS2}
                  </div>
                  <!-- Подсказка для подтверждения пароля -->
                  <small class="form-text text-muted">{PHP.L.users_newpasshint2}</small>
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