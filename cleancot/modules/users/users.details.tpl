<!-- BEGIN: MAIN -->
<div class="bg-light py-2 border-bottom border-primary">
  <!-- Хлебные крошки в контейнере -->
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <!-- Список хлебных крошек с горизонтальной прокруткой -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> {USERS_DETAILS_BREADCRUMBS}</ol>
    </nav>
  </div>
</div>

<div class="bg-body-secondary">
  <!-- Основной контейнер с вертикальным выравниванием контента -->
  <div class="container-md d-flex flex-column justify-content-center py-4"> 
    <!-- Заголовок страницы с именем пользователя -->
    <h2 class="users mb-3">{USERS_DETAILS_TITLE}
        <!-- BEGIN: USERS_DETAILS_ADMIN -->
        <!-- Ссылка для админа на редактирование профиля -->
         [ {USERS_DETAILS_ADMIN_EDIT} ]
        <!-- END: USERS_DETAILS_ADMIN -->
    </h2>

    <!-- Карточка с данными пользователя вместо таблицы -->
    <div class="card">
        <!-- Тело карточки -->
        <div class="card-body">
            <!-- Список пар "ключ-значение" -->
            <dl class="row mb-0">
                <!-- Если модуль PM активен -->
                <!-- IF {PHP|cot_module_active('pm')} -->
                <!-- Отправка личного сообщения -->
                <dt class="col-sm-4 col-md-3">{PHP.L.users_sendpm}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_PM}</dd>
                <!-- ENDIF -->

                <!-- Основная группа пользователя -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Maingroup}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_MAIN_GROUP}</dd>

                <!-- Членство в группах -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Groupsmembership}:</dt>
                <dd class="col-sm-8 col-md-9">
                    {PHP.L.Maingroup}:<br/>
                    <!-- Стрелка вниз для визуального разделения -->
                    <i class="fa-solid fa-arrow-down d-block my-1"></i>
                    {USERS_DETAILS_GROUPS}
                </dd>

                <!-- Страна пользователя -->
				<!-- IF {USERS_DETAILS_COUNTRY} !== '' -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Country}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_COUNTRY_FLAG} {USERS_DETAILS_COUNTRY}</dd>
				<!-- ENDIF -->
				
				<!-- Если есть часовой пояс -->
                <!-- IF {USERS_DETAILS_TIMEZONE} -->
                <!-- Часовой пояс -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Timezone}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_TIMEZONE}</dd>
                <!-- ENDIF -->

                <!-- Если есть дата рождения -->
                <!-- IF {USERS_DETAILS_BIRTHDATE} -->
                <!-- Дата рождения -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Birthdate}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_BIRTHDATE}</dd>
                <!-- ENDIF -->

                <!-- Если есть возраст -->
                <!-- IF {USERS_DETAILS_AGE} -->
                <!-- Возраст -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Age}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_AGE}</dd>
                <!-- ENDIF -->

                <!-- Если есть пол -->
                <!-- IF {USERS_DETAILS_GENDER} -->
                <!-- Пол -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Gender}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_GENDER}</dd>
                <!-- ENDIF -->

                <!-- Если есть подпись -->
                <!-- IF {USERS_DETAILS_TEXT} -->
                <!-- Подпись -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Signature}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_TEXT}</dd>
                <!-- ENDIF -->

                <!-- Если есть дата регистрации -->
                <!-- IF {USERS_DETAILS_REGDATE} -->
                <!-- Дата регистрации -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Registered}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_REGDATE}</dd>
                <!-- ENDIF -->
				
				<!-- Если модуль Files активен -->
				<!-- IF {PHP|cot_module_active('files')} -->
				  <!-- Если есть аватар (по ID) -->
				  <!-- IF {USERS_DETAILS_AVATAR_ID} > 0 -->
					<!-- Поле "Аватар" -->
					<dt class="col-sm-4 col-md-3">{PHP.L.Avatar}:</dt>
					<dd class="col-sm-8 col-md-9">
					  <!-- Изображение аватара -->
					  <img class="rounded img-fluid" src="{USERS_DETAILS_AVATAR_URL}" width="250" height="250" alt="{USERS_DETAILS_NICKNAME}">
					</dd>
				  <!-- Иначе показываем заглушку -->
				  <!-- ELSE -->
					<!-- Поле "Аватар" (заглушка) -->
					<dt class="col-sm-4 col-md-3">{PHP.L.Avatar}:</dt>
					<dd class="col-sm-8 col-md-9">
					  <!-- Изображение-заглушка для аватара -->
					  <img class="rounded img-fluid" width="155" height="155" alt="{USERS_DETAILS_NICKNAME}" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp">
					</dd>
				  <!-- ENDIF -->
				<!-- ENDIF -->
				
                <!-- Если есть аватар -->
				<!-- IF {PHP|cot_plugin_active('userimages')} -->
                <!-- Если плагин 'userimages' активен, проверяем, есть ли у владельца страницы аватар -->
					<!-- IF {USERS_DETAILS_AVATAR} -->
					<dt class="col-sm-4 col-md-3">{PHP.L.Avatar}:</dt>
					<dd class="col-sm-8 col-md-9">{USERS_DETAILS_AVATAR}</dd>
					<!-- ENDIF -->
					<!-- Если есть фото -->
					<!-- IF {USERS_DETAILS_PHOTO} -->
					<dt class="col-sm-4 col-md-3">{PHP.L.Photo}:</dt>
					<dd class="col-sm-8 col-md-9">{USERS_DETAILS_PHOTO}</dd>
					<!-- ENDIF -->
				<!-- ENDIF -->
            </dl>
        </div>
    </div>
</div>
</div>
<!-- END: MAIN -->