<!-- 
/********************************************************************************
 * File: users.edit.tpl
 * Extention: module 'users'
 * Description: HTML template for editing user data on behalf of and with the rights of the site administrator.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 28 March 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot  
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-secondary">
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
<div class=" py-4">
  <!-- Контейнер среднего размера с вертикальным выравниванием -->
  <div class="container-md d-flex flex-column justify-content-center">
    <!-- Сетка для формы -->
    <div class="row">
      <!-- Центрированная колонка -->
      <div class="col-12 col-md-10 mx-auto">
	  <h2 class="h5 mb-4 text-black">{PHP.L.CleanCot_users_edit_title} ID#{USERS_EDIT_ID}</h2>
        <!-- Карточка с формой -->
        <div class="card mt-4 mb-4">
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

				<!-- IF {PHP|cot_plugin_active('userimages')} AND !{PHP|cot_module_active('files')} --> <!-- Условие Cotonti: активен плагин "userimages" и не активен модуль "Files" -->

					<!-- Поле "Аватар" (если есть) -->
					<!-- IF {USERS_EDIT_AVATAR} --> <!-- Условие Cotonti: проверка наличия аватара в профиле пользователя -->
					<div class="col-12"> 
						<label for="profileAvatar" class="form-label fw-semibold">{PHP.L.Avatar}:</label> <!-- Метка для поля аватара с жирным текстом, текст из языкового файла Cotonti -->
						<div class="form-control">{USERS_EDIT_AVATAR}</div> <!-- Поле с аватаром в виде обычного текста, значение из Cotonti -->
					</div> <!-- Закрытие контейнера колонки -->
					<!-- ENDIF --> <!-- Конец условия проверки аватара -->

					<!-- Поле "Фото" (если есть) -->
					<!-- IF {USERS_EDIT_PHOTO} --> <!-- Условие Cotonti: проверка наличия фото в профиле пользователя -->
					<div class="col-12"> 
						<label for="profilePhoto" class="form-label fw-semibold">{PHP.L.Photo}:</label> <!-- Метка для поля фото с жирным текстом, текст из языкового файла Cotonti -->
						<div class="form-control">{USERS_EDIT_PHOTO}</div> <!-- Поле с фото в виде обычного текста, значение из Cotonti -->
					</div> <!-- Закрытие контейнера колонки -->
					<!-- ENDIF --> <!-- Конец условия проверки фото -->

				<!-- ENDIF --> <!-- Конец условия активности плагина "userimages" и отсутствия модуля "Files" -->
				
				<!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} --> <!-- Если модуль Files активен и в системе НЕ активен плагин 'userimages' -->
					<!-- Поле "Аватар" (если есть) -->
					<!-- IF {USERS_EDIT_AVATAR} --> <!-- Условие Cotonti: проверка наличия аватара в профиле пользователя -->
					<div class="col-12"> 
						<label for="profileAvatar" class="form-label fw-semibold">{PHP.L.Avatar}:</label> <!-- Метка для поля аватара с жирным текстом, текст из языкового файла Cotonti -->
						<div class="form-control">{USERS_EDIT_AVATAR}</div> <!-- Поле с аватаром в виде обычного текста, значение из Cotonti -->
					</div> <!-- Закрытие контейнера колонки -->
					<!-- ENDIF --> <!-- Конец условия проверки аватара -->
                <!-- Поле "Фото" (если есть) -->
                <!-- IF {USERS_EDIT_PHOTO} -->
                <div class="col-12">
                  <label for="userPhoto" class="form-label fw-semibold">{PHP.L.Photo}:</label>
                  <div class="form-control-plaintext">
                    {USERS_EDIT_PHOTO}
                  </div>
                </div>
                <!-- ENDIF -->
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
<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие подключения просмотра mskin для админов -->
<!-- Подключение mskin.tpl для группы администраторов -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"} <!-- Подключение дополнительного шаблона -->
<!-- ENDIF --> <!-- Конец условия подключения просмотра mskin для админов -->
<!-- END: MAIN -->