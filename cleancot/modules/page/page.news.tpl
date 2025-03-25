<!-- BEGIN: MAIN -->
<!-- IF {PHP.env.location} == 'pages' AND {PHP.m} == 'main' -->
<!-- Подключение скрипта lightbox.js только на странице полной новости (режим m=main) -->
<script src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/js/lightbox.js"></script>
<!-- ENDIF -->
<div class="bg-light py-2 border-bottom border-primary">
  <!-- Хлебные крошки в контейнере -->
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <!-- Список хлебных крошек с горизонтальной прокруткой -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> {PAGE_BREADCRUMBS} </ol>
    </nav>
  </div>
</div>
<div class="bg-body-secondary">
  <!-- Основной контейнер с вертикальным выравниванием контента -->
  <div class="container-md d-flex flex-column justify-content-center py-4 "> 
  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
	<div class="row">
      <!-- Main content: full width on mobile (col-12), 8/12 on medium+ (col-md-8) -->
      <!-- Основной контент: полный экран на мобильных, 8 колонок на средних и больших экранах -->
      <div class="col-12 col-md-8 mx-auto pb-5">
        <div class="card mb-4">
          <div class="card-header bg-warning text-dark">
            <!-- Заголовок новости в шапке карточки -->
            <h2 class="h5 mb-0">{PAGE_TITLE}</h2>
          </div>
          <div class="card-body">
            <!-- IF {PHP|cot_module_active('files')} -->
            <!-- IF {PAGE_ID|cot_filesCount('page', $this, '', 'images')} > 0 -->
            <!-- Галерея изображений, если модуль files активен и есть изображения -->
            {PAGE_ID|cot_filesGallery('page', $this, '', 'files.gallery')}
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- IF {PAGE_COMMENTS_COUNT} > 0-->
            <!-- Количество комментариев, если они есть -->
            <div class="mb-3">{PHP.L.CleanCot_Comments}: {PAGE_COMMENTS_COUNT} </div>
            <!-- ENDIF -->
            <!-- Description -->
            <!-- IF {PAGE_DESCRIPTION} -->
            <!-- Описание новости, если оно задано -->
            <p class="small mb-3">{PAGE_DESCRIPTION}</p>
            <!-- ENDIF -->
            <!-- Tags and category -->
            <!-- Блок тегов и категории -->
            <div class="row g-3 mb-3">
              <div class="col-12 col-md-6">
                <strong>{PHP.L.Tags}:</strong>
                <!-- BEGIN: PAGE_TAGS_ROW -->
                <!-- Цикл вывода тегов -->
                <!-- IF {PHP.tag_i} > 0 -->,
                <!-- ENDIF -->
                <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
                <!-- END: PAGE_TAGS_ROW -->
                <!-- BEGIN: PAGE_NO_TAGS --> 
                <!-- Сообщение, если тегов нет -->
                {PAGE_NO_TAGS}
                <!-- END: PAGE_NO_TAGS -->
              </div>
              <div class="col-12 col-md-6 text-md-end">
                <!-- Категория новости с выравниванием вправо на средних экранах -->
                <strong>{PHP.L.Filedunder}:</strong> {PAGE_CAT_PATH}
              </div>
            </div>
            <!-- News text -->
            <!-- Текст новости -->
            <div class="mb-3">{PAGE_TEXT}</div>
          </div>
        </div>
		<!-- IF {PHP|cot_module_active('files')} -->
		<!-- IF {PAGE_ID|cot_filesCount('page',$this,'','files')} > 0 -->
		<!-- Блок загрузок, если модуль files активен и есть файлы -->
		<div class="card mb-4 shadow-sm">
			<div class="card-body">
				<!-- Заголовок блока загрузок -->
				<h3 class="h5 fw-bold card-title mb-2">{PHP.L.files_downloads}</h3>
				{PAGE_ID|cot_filesDownloads('page',$this)}
			</div>
		</div>
		<!-- ENDIF -->
		<!-- ENDIF -->
        <!-- Comments -->
        <!-- IF {PHP|cot_plugin_active('comments')} --> 
        <!-- Блок комментариев, если плагин comments активен -->
        {PAGE_COMMENTS_DISPLAY}
        <!-- ENDIF -->
      </div>
      <!-- Sidebar: full width on mobile (col-12), 4/12 on medium+ (col-md-4) -->
      <!-- Боковая панель: полный экран на мобильных, 4 колонки на средних и больших экранах -->
      <div class="col-12 col-md-4 mx-auto">
        <!-- Admin panel -->
        <!-- IF {PHP.usr.maingrp} == 5 -->
        <!-- BEGIN: PAGE_ADMIN -->
        <!-- Панель администратора, видна только для группы с ID 5 -->
        <div class="card mb-4">
          <div class="card-header bg-warning text-dark">
            <!-- Заголовок панели администратора -->
            <h2 class="h5 mb-0">{PHP.L.Adminpanel}</h2>
          </div>
          <div class="card-body p-0">
            <ul class="list-group list-group-flush">
              <!-- IF {PHP.usr.isadmin} -->
              <!-- Ссылка на админку для администраторов -->
              <li class="list-group-item">
                <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
              </li>
              <!-- IF {PHP.structure.page.unvalidated.path} -->
              <!-- Ссылка на непроверенные страницы, если они есть -->
              <li class="list-group-item">
                <a href="{PHP|cot_url('page','c=unvalidated')}" title="{PHP.structure.page.unvalidated.title}">{PHP.structure.page.unvalidated.title}</a>
              </li>
              <!-- ENDIF -->
              <!-- ENDIF -->
              <!-- Ссылка на добавление новой страницы -->
              <li class="list-group-item">
                <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
              </li>
              <!-- Ссылка на отправку на проверку -->
              <li class="list-group-item">{PAGE_ADMIN_UNVALIDATE}</li>
              <!-- Ссылка на редактирование -->
              <li class="list-group-item">{PAGE_ADMIN_EDIT}</li>
              <!-- Ссылка на клонирование -->
              <li class="list-group-item">{PAGE_ADMIN_CLONE}</li>
              <!-- Ссылка на удаление -->
              <li class="list-group-item">{PAGE_ADMIN_DELETE}</li>
              <!-- IF {PAGE_I18N_TRANSLATE} -->
              <!-- Ссылка на перевод, если доступно -->
              <li class="list-group-item">{PAGE_I18N_TRANSLATE}</li>
              <!-- ENDIF -->
              <!-- IF {PAGE_I18N_DELETE} -->
              <!-- Ссылка на удаление перевода, если доступно -->
              <li class="list-group-item">{PAGE_I18N_DELETE}</li>
              <!-- ENDIF -->
            </ul>
          </div>
        </div>
        <!-- END: PAGE_ADMIN -->
        <!-- ENDIF -->
        <!-- Блок информации об авторе -->
        <div class="card mb-4">
          <!-- Заголовок карточки (заглушка) -->
          <h2 class="card-header"> sometext </h2>
          <div class="card-body">
            <!-- Контейнер для аватара и информации об авторе -->
            <div class="row justify-content-between">
              <div class="col-md-auto text-center text-md-start">
                <!-- Проверяем, активен ли плагин 'userimages' через функцию cot_plugin_active -->
                <!-- IF {PHP|cot_plugin_active('userimages')} -->
                <!-- Если плагин 'userimages' активен, проверяем, есть ли у владельца страницы аватар -->
                <!-- IF {PAGE_OWNER_AVATAR_SRC} -->
                <!-- Если аватар есть, выводим его: src берётся из {PAGE_OWNER_AVATAR_SRC}, alt — ник владельца -->
                <img src="{PAGE_OWNER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                <!-- Иначе, если аватара нет -->
                <!-- ELSE -->
                <!-- Выводим дефолтный аватар из ресурса {PHP.R.userimg_default_avatar} в cleancot.resources.php  -->
                <img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                <!-- Конец условия для аватара при активном 'userimages' -->
                <!-- ENDIF -->
                <!-- Конец блока для плагина 'userimages' -->
                <!-- ENDIF -->
                <!-- Проверяем, активен ли модуль 'files', но при этом плагин 'userimages' НЕ активен -->
                <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} -->
                <!-- Если модуль 'files' активен, проверяем, есть ли ID аватара у владельца страницы (больше нуля значит есть файл) -->
                <!-- IF {PAGE_OWNER_AVATAR_ID} > 0 -->
                <!-- Если ID аватара есть, выводим аватар по URL из {PAGE_OWNER_AVATAR_URL} -->
                <img src="{PAGE_OWNER_AVATAR_URL}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                <!-- Иначе, если ID аватара нет (меньше или равно нулю) -->
                <!-- ELSE -->
                <!-- Выводим дефолтный аватар из ресурса {PHP.R.userimg_default_avatar} в cleancot.resources.php -->
                <img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                <!-- Конец условия для аватара при активном 'files' -->
                <!-- ENDIF -->
                <!-- Конец блока для модуля 'files' без 'userimages' -->
                <!-- ENDIF -->
                <!-- Online status -->
                <!-- IF {PAGE_OWNER_ONLINE} -->
                <!-- Статус онлайн для владельца -->
                <p class="mb-3">
                  <span class="badge text-bg-success">{PHP.L.Online}</span>
                </p>
                <!-- ELSE -->
                <!-- Статус оффлайн для владельца -->
                <p class="mb-3">
                  <span class="badge text-bg-secondary">{PHP.L.Offline}</span>
                </p>
                <!-- ENDIF -->
              </div>
              <!-- Copyright notice -->
              <!-- Информация об авторе -->
              <div class="col-md-auto text-center text-md-end">
                <!-- Author -->
                <!-- Имя автора или владельца -->
                <h4 class="h5 mb-0">
                  <!-- IF !{PAGE_AUTHOR} OR {PAGE_AUTHOR} == {OWNER_NAME} --> {PAGE_OWNER}
                  <!-- ELSE --> {PAGE_AUTHOR}
                  <!-- ENDIF -->
                </h4>
                <!-- Дата последнего входа -->
                <p class="small">{PHP.L.Lastlogged}: {PAGE_OWNER_LASTLOG}</p>
              </div>
            </div>
            <!-- Links list with dividers -->
            <!-- Список ссылок -->
            <ul class="list-group list-group-flush">
              <!-- PM link -->
              <!-- IF {PHP|cot_module_active('pm')} AND {PHP.usr.id} > 0 AND {PHP.usr.id} != {PAGE_OWNER_ID} -->
              <!-- Ссылка на отправку личного сообщения, если модуль pm активен и пользователь не владелец -->
              <li class="list-group-item px-0">
                <a href="{PHP.pag.user_id|cot_url('pm','m=send&to=$this', '', 1)}">{PHP.L.users_sendpm}</a>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP.usr.id|cot_auth('page', '', 'W')} -->
              <!-- Add page link -->
              <!-- IF {PHP.usr.auth_write} -->
              <!-- Ссылка на добавление страницы, если есть права на запись -->
              <li class="list-group-item px-0">
                <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
              </li>
              <!-- ENDIF -->
              <!-- Edit link -->
              <!-- IF {PHP.usr.id} == {PAGE_OWNER_ID} -->
              <!-- Ссылка на редактирование, если пользователь — владелец -->
              <li class="list-group-item px-0">
                <a href="{PAGE_ID|cot_url('page','m=edit&id=$this')}">{PHP.L.Edit}</a>
              </li>
              <!-- ENDIF -->
              <!-- Translate link -->
              <!-- IF {PAGE_I18N_TRANSLATE} -->
              <!-- Ссылка на перевод, если доступно -->
              <li class="list-group-item px-0">
                <a href="{PHP.url_i18n}">{PHP.L.i18n_translate}</a>
              </li>
              <!-- ENDIF -->
              <!-- ENDIF -->
              <!-- Published date -->
              <!-- IF {PAGE_CREATED} -->
              <!-- Дата публикации -->
              <li class="list-group-item px-0">
                <strong>{PHP.L.CleanCot_page_published}</strong> {PAGE_CREATED}
              </li>
              <!-- ENDIF -->
              <!-- Updated date -->
              <!-- IF {PAGE_UPDATED} -->
              <!-- Дата последнего обновления -->
              <li class="list-group-item px-0">
                <strong>{PHP.L.CleanCot_page_latest_update}</strong> {PAGE_UPDATED}
              </li>
              <!-- ENDIF -->
              <!-- Language switcher -->
              <!-- IF {PHP.pag_i18n_locales} > 1 -->
              <!-- BEGIN: I18N_LANG -->
              <!-- Переключатель языков, если доступно более одного языка -->
              <li class="list-group-item px-0">
                <strong>{PHP.L.Language}:</strong>
                <ul class="list-inline mt-1">
                  <!-- BEGIN: I18N_LANG_ROW -->
                  <!-- Цикл вывода языков -->
                  <!-- IF {PHP.i18n_locale} != {I18N_LANG_ROW_CODE} -->
                  <li class="list-inline-item">
                    <a href="{I18N_LANG_ROW_URL}">
                      <!-- IF {I18N_LANG_ROW_CODE|is_file('images/flags/$this.png')} -->
                      <!-- Флаг языка, если файл существует -->
                      <img src="images/flags/{I18N_LANG_ROW_CODE}.png" alt="{I18N_LANG_ROW_CODE}" class="me-1" style="width: 16px;">
                      <!-- ENDIF --> {I18N_LANG_ROW_TITLE}
                    </a>
                  </li>
                  <!-- ENDIF -->
                  <!-- END: I18N_LANG_ROW -->
                </ul>
              </li>
              <!-- END: I18N_LANG -->
              <!-- ENDIF -->
              <!-- BEGIN: PAGE_FILE -->
              <!-- Блок прикреплённого файла -->
              <li class="list-group-item px-0">
                <!-- BEGIN: MEMBERSONLY -->
                <!-- Заголовок файла для ограниченного доступа -->
                <p>{PAGE_TITLE}</p>
                <!-- END: MEMBERSONLY -->
                <!-- Уведомление о наличии вложения -->
                <p class="small">{PHP.L.CleanCot_page_HasAttachment}</p>
                <!-- BEGIN: DOWNLOAD -->
                <!-- Ссылка на скачивание файла -->
                <p class="small"><a href="{PAGE_FILE_URL}" class="btn btn-info btn-sm me-2" data-bs-toggle="tooltip" data-bs-title="{PAGE_FILE_NAME}">{PHP.L.CleanCot_page_DownloadFile}</a></p>
                <!-- END: DOWNLOAD -->
                <!-- Количество скачиваний -->
                <p class="small">{PHP.L.Downloaded}: {PAGE_FILE_COUNTTIMES}</p>
              </li>
              <!-- END: PAGE_FILE -->
            </ul>
          </div>
        </div>
        <!-- Summary -->
        <!-- BEGIN: PAGE_MULTI -->
        <!-- Блок краткого содержания -->
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <!-- Заголовок краткого содержания -->
            <h2 class="h5 mb-0">{PHP.L.Summary}</h2>
          </div>
          <div class="card-body"> 
            <!-- Заголовки вкладок -->
            {PAGE_MULTI_TABTITLES} 
            <!-- Навигация по вкладкам -->
            <p class="mb-0">{PAGE_MULTI_TABNAV}</p>
          </div>
        </div>
        <!-- END: PAGE_MULTI -->
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
<!-- Подключение mskin.tpl для группы администраторов -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->