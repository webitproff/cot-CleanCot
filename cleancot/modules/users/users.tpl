<!-- 
/********************************************************************************
 * File: users.tpl
 * Extention: module 'users'
 * Description: HTML template of a list of site users, with the ability to filter by various parameters, as well as sorting.
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
<div class="bg-light py-2 border-bottom border-secondary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{USERS_BREADCRUMBS}</ol>
    </nav>
  </div>
</div>
<div class="container-xl min-height-50vh d-flex flex-column">
  <div class="row flex-grow-1">
    <div class="col-12">
      <div class="card mt-4 mb-4">
        <div class="card-header bg-costum-dgrey text-white">
          <h2 class="h5 mb-0">{PHP.L.Filters}</h2>
        </div>
        <div class="card-body">
          <!-- Фильтры -->
          <div class="mb-4">
            <form id="filter-form" action="{USERS_FILTERS_ACTION}" method="GET" class="row g-3 align-items-end"> {USERS_FILTERS_PARAMS} 
				<div class="col-md-4">
					<h3 class="h6 mb-2">{PHP.L.Filter_search}:</h3>
					<div class="d-flex flex-column gap-2"> 
						{USERS_FILTERS_COUNTRY} 
						{USERS_FILTERS_MAIN_GROUP} 
						{USERS_FILTERS_GROUP}
					</div>
				</div>
              <div class="col-md-4">
                <h3 class="h6 mb-2">{PHP.L.Username_search}:</h3> {USERS_FILTERS_SEARCH}
              </div>
              <div class="col-md-4">
                <h3 class="h6 mb-2">{PHP.L.OrderBy}:</h3>
                <div class="d-flex gap-2"> {USERS_FILTERS_SORT} {USERS_FILTERS_SORT_WAY} </div>
              </div>
              <div class="col-12">
                <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- Список пользователей -->
      <div class="list-group mb-5">
        <div class="list-group-item list-group-item-dark">
          <div class="row align-items-center fw-bold">
            <div class="col-12 col-md-4">{USERS_TOP_NAME}</div>
            <div class="col-12 col-md-3">{USERS_TOP_MAIN_GROUP}</div>
            <div class="col-12 col-md-1">{USERS_TOP_GROUP_LEVEL}</div>
            <div class="col-12 col-md-2">{USERS_TOP_COUNTRY}</div>
            <div class="col-12 col-md-2">{USERS_TOP_REGISTRATION_DATE}</div>
          </div>
        </div>
        <!-- BEGIN: USERS_ROW -->
        <div class="list-group-item">
          <div class="row align-items-center">
            <div class="col-12 col-md-4">
              <!-- Проверяем, активен ли плагин 'userimages' через функцию cot_plugin_active -->
              <!-- IF {PHP|cot_plugin_active('userimages')} -->
              <!-- Если плагин 'userimages' активен, проверяем, есть ли у владельца страницы аватар -->
              <!-- IF {USERS_ROW_AVATAR_SRC} -->
              <!-- Если аватар есть, выводим его: src берётся из {USERS_ROW_AVATAR_SRC}, alt — ник владельца -->
              <img src="{USERS_ROW_AVATAR_SRC}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="50" height="50">
              <!-- Иначе, если аватара нет -->
              <!-- ELSE -->
              <!-- Выводим дефолтный аватар из ресурса {PHP.R.userimg_default_avatar} в cleancot.resources.php  -->
              <img src="{PHP.R.userimg_default_avatar}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="50" height="50">
              <!-- Конец условия для аватара при активном 'userimages' -->
              <!-- ENDIF -->
              <!-- Конец блока для плагина 'userimages' -->
              <!-- ENDIF -->
              <!-- Проверяем, активен ли модуль 'files', но при этом плагин 'userimages' НЕ активен -->
              <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} -->
              <!-- Если модуль 'files' активен, проверяем, есть ли ID аватара у владельца страницы (больше нуля значит есть файл) -->
              <!-- IF {USERS_ROW_AVATAR_ID} > 0 -->
              <!-- Если ID аватара есть, выводим аватар по URL из {USERS_ROW_AVATAR_URL} -->
              <img src="{USERS_ROW_AVATAR_URL}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="50" height="50">
              <!-- Иначе, если ID аватара нет (меньше или равно нулю) -->
              <!-- ELSE -->
              <!-- Выводим дефолтный аватар из ресурса {PHP.R.userimg_default_avatar} в cleancot.resources.php -->
              <img src="{PHP.R.userimg_default_avatar}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="50" height="50">
              <!-- Конец условия для аватара при активном 'files' -->
              <!-- ENDIF -->
              <!-- Конец блока для модуля 'files' без 'userimages' -->
              <!-- ENDIF -->
              <span class="mx-3">{USERS_ROW_NAME} <span> {USERS_ROW_TAG} {USERS_ROW_PM}
            </div>
            <div class="col-12 col-md-3">{USERS_ROW_MAIN_GROUP}</div>
            <div class="col-12 col-md-1">{USERS_ROW_MAIN_GROUP_STARS}</div>
            <div class="col-12 col-md-2">{USERS_ROW_COUNTRY_FLAG} {USERS_ROW_COUNTRY}</div>
            <div class="col-12 col-md-2">{USERS_ROW_REGDATE}</div>
          </div>
        </div>
        <!-- END: USERS_ROW -->
      </div>
    </div>
  </div>
  <!-- Пагинация -->
  <div class="row">
    <div class="col-12">
      <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
          <span>{PHP.L.users_usersperpage}: {ENTRIES_PER_PAGE}</span>
          <span class="ms-3">{PHP.L.users_usersinthissection}: {TOTAL_ENTRIES}</span>
        </div>
        <nav aria-label="Users pagination">
          <ul class="pagination mb-0"> {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} </ul>
        </nav>
      </div>
    </div>
  </div>
</div>

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие PHP.usr.maingrp == 5 - просмотр info для админов -->
<div class="container-xl">
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is the HTML template <code>users.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
</div>
<!-- ENDIF --> <!-- Конец условия просмотр info для админов -->
<!-- END: MAIN -->