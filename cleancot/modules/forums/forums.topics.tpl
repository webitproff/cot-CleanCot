<!-- 
/********************************************************************************
 * File: forums.topics.tpl
 * Description: This is an HTML template for a list of topics that are discussed in the forum section.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 01 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер для хлебных крошек -->
  <div class="container py-2"> <!-- Внутренний контейнер -->
    <nav aria-label="breadcrumb" class="d-flex justify-content-between align-items-center"> <!-- Навигация -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список крошек -->
        {FORUMS_TOPICS_PAGETITLE} <!-- Заголовок страницы в виде крошек -->
      </ol> <!-- Закрывает крошки -->
      <a href="{FORUMS_TOPICS_SECTION_RSS}" class="ms-2" title="RSS" data-bs-toggle="tooltip" data-bs-placement="top"> <!-- Ссылка на RSS -->
        <i class="fa-solid fa-rss"></i> <!-- Иконка RSS -->
      </a> <!-- Закрывает ссылку -->
    </nav> <!-- Закрывает навигацию -->
  </div> <!-- Закрывает контейнер крошек -->
</div> <!-- Закрывает панель крошек -->

<!-- Основной контейнер -->
<div class="py-4"> <!-- Главный контейнер с отступами -->
  <div class="container-xl"> <!-- Контейнер Bootstrap -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает предупреждения -->
	<h1 class="h3 mb-3">{FORUMS_TOPICS_SHORTTITLE}</h1>
	<!-- IF {FORUMS_TOPICS_SUBTITLE} -->
	<!-- Описание, если оно задано -->
	<h2 class="fs-6 mb-4">{FORUMS_TOPICS_SUBTITLE}</h2>
	<!-- ENDIF -->
    <!-- Подфорумы -->
    <!-- BEGIN: FORUMS_SECTIONS --> <!-- Цикл подфорумов -->
    <div class="card mb-5"> <!-- Карточка для подфорумов -->
      <div class="card-header bg-primary-subtle"> <!-- Заголовок карточки -->
        <h2 class="h5 mb-0 text-primary-emphasis text-decoration-none">{PHP.L.Subforums}</h2> <!-- Заголовок "Подфорумы" -->
      </div> <!-- Закрывает заголовок -->
      <div class="card-body p-0"> <!-- Тело карточки -->
        <div class="list-group list-group-striped list-group-flush"> <!-- Список с чередованием -->
          <!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION --> <!-- Цикл подфорумов -->
          <div class="list-group-item list-group-item-action {FORUMS_SECTIONS_ROW_ODDEVEN}"> <!-- Элемент списка -->
            <div class="row g-3"> <!-- Строка Bootstrap -->
              <div class="col-12 col-md-8"> <!-- Левая колонка -->
                <h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis"> <!-- Заголовок подфорума -->
                  <span class="text-muted small me-1">{PHP.R.icon_subfolder}</span> <!-- Иконка подфорума -->
                  <a class="text-reset text-decoration-none" href="{FORUMS_SECTIONS_ROW_URL}" title="{FORUMS_SECTIONS_ROW_TITLE}">{FORUMS_SECTIONS_ROW_TITLE}</a> <!-- Ссылка на подфорум -->
                </h5> <!-- Закрывает заголовок -->
                <!-- IF {FORUMS_SECTIONS_ROW_DESC} --> <!-- Условие описания -->
                <p class="mb-1 text-muted">{FORUMS_SECTIONS_ROW_DESC}</p> <!-- Описание подфорума -->
                <!-- ENDIF --> <!-- Закрывает условие -->
              </div> <!-- Закрывает левую колонку -->
              <div class="col-12 col-md-4 text-center"> <!-- Правая колонка -->
                <small class="text-body-secondary">{PHP.L.forums_topics}: {FORUMS_SECTIONS_ROW_TOPICCOUNT}</small><!-- Количество тем -->
                <small class="text-body-secondary">{PHP.L.forums_posts}: {FORUMS_SECTIONS_ROW_POSTCOUNT}</small><br> <!-- Количество постов -->
                <small class="text-body-secondary">{PHP.L.Lastpost}: {FORUMS_SECTIONS_ROW_LASTPOSTER}</small><br> <!-- Последний автор -->
                <small class="text-body-secondary">{FORUMS_SECTIONS_ROW_TIMEAGO}</small> <!-- Время последнего поста -->
              </div> <!-- Закрывает правую колонку -->
            </div> <!-- Закрывает строку -->
          </div> <!-- Закрывает элемент списка -->
          <!-- END: FORUMS_SECTIONS_ROW_SECTION --> <!-- Закрывает цикл подфорумов -->
        </div> <!-- Закрывает список -->
      </div> <!-- Закрывает тело карточки -->
    </div> <!-- Закрывает карточку -->
    <!-- END: FORUMS_SECTIONS --> <!-- Закрывает цикл подфорумов -->

    <!-- Навигация -->
	<!-- IF {PHP.usr.id} > 0 -->
    <div class="mobile-menu-wrapper my-3 my-md-4"> <!-- Обёртка меню -->
      <ul class="nav nav-pills pills-menu dataset-pills"> <!-- Список навигации -->
		
		<!-- IF {PHP|cot_auth('forums', 'a', 'W')} -->
        <li class="nav-item"> <!-- Элемент меню -->
          <a class="btn btn-primary" href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow">{PHP.L.forums_newtopic}</a> <!-- Ссылка "Новая тема" -->
        </li> <!-- Закрывает элемент -->
        <!-- ENDIF --> <!-- Закрывает условие cot_auth -->
        
      </ul> <!-- Закрывает список -->
    </div> <!-- Закрывает обёртку меню -->
	<!-- ENDIF --> <!-- Закрывает условие PHP.usr.id -->
	
    <!-- Темы форума -->
    <div class="card mb-5"> <!-- Карточка для тем -->
		<div class="card-header bg-primary-subtle"> <!-- Заголовок карточки -->
		  <div class="row g-2 align-items-center"> <!-- Сетка Bootstrap с небольшими отступами и выравниванием -->
			<div class="col-auto" data-bs-toggle="tooltip" data-bs-title="{PHP.L.CleanCot_forums_info_icons}"> <!-- Колонка для кнопки, минимальная ширина -->
			  <a class="btn" data-bs-toggle="modal" data-bs-target="#info_icons" role="button" aria-expanded="false" aria-controls="info_icons"> <!-- Ссылка с активацией модального окна -->
				<i class="fa-solid fa-circle-question fa-xl"></i> <!-- Иконка вопроса из Font Awesome -->
			  </a> <!-- Закрывает ссылку -->
			</div> <!-- Закрывает колонку кнопки -->
			<div class="col"> <!-- Колонка для заголовка, занимает остальное место -->
			  <h2 class="h5 mb-0 text-primary-emphasis text-decoration-none"> <!-- Заголовок -->
				<span data-bs-toggle="tooltip" data-bs-title="{PHP.L.CleanCot_forums_sort_topics}">{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</span> <!-- Текст с тултипом -->
			  </h2> <!-- Закрывает заголовок -->
			</div> <!-- Закрывает колонку заголовка -->
		  </div> <!-- Закрывает сетку -->
		</div> <!-- Закрывает заголовок карточки -->
      <div class="card-body p-0"> <!-- Тело карточки -->
        <div class="list-group list-group-striped list-group-flush"> <!-- Список тем -->
          <!-- BEGIN: FORUMS_TOPICS_ROW --> <!-- Цикл тем -->
          <div class="list-group-item list-group-item-action {FORUMS_TOPICS_ROW_ODDEVEN}"> <!-- Элемент списка -->
            <div class="row g-3"> <!-- Строка Bootstrap -->
              <div class="col-12 col-md-8"> <!-- Левая колонка -->
                <h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis"> <!-- Заголовок темы -->
                  <span class="text-muted small me-1">{FORUMS_TOPICS_ROW_ICON}</span> <!-- Иконка темы -->
                  <a class="text-reset text-decoration-none" href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW}">{FORUMS_TOPICS_ROW_TITLE}</a> <!-- Ссылка на тему -->
                </h5> <!-- Закрывает заголовок -->
                <!-- IF {FORUMS_TOPICS_ROW_DESC} --> <!-- Условие описания -->
                <p class="mb-1 text-muted">{FORUMS_TOPICS_ROW_DESC}</p> <!-- Описание темы -->
                <!-- ENDIF --> <!-- Закрывает условие -->
                <p class="mb-1 text-muted small"> <!-- Мета-информация -->
                  {FORUMS_TOPICS_ROW_CREATIONDATE} {PHP.L.CleanCot_forums_Topic_Starter}: {FORUMS_TOPICS_ROW_FIRSTPOSTER} {FORUMS_TOPICS_ROW_PAGES} <!-- Дата создания и автор -->
                  <!-- IF {FORUMS_TOPICS_ROW_TAGS} --> <!-- Условие тегов -->
                  <br>{FORUMS_TOPICS_ROW_TAGS} <!-- Теги -->
                  <!-- ENDIF --> <!-- Закрывает условие -->
                </p> <!-- Закрывает мета-информацию -->
              </div> <!-- Закрывает левую колонку -->
              <div class="col-12 col-md-4 text-center"> <!-- Правая колонка -->
                <small class="text-body-secondary">{PHP.L.forums_posts}: {FORUMS_TOPICS_ROW_POSTCOUNT}</small>  <!-- Количество постов -->
                <small class="text-body-secondary">{PHP.L.CleanCot_forums_Views_Topic}: {FORUMS_TOPICS_ROW_VIEWCOUNT}</small><br> <!-- Количество просмотров -->
                <small class="text-body-secondary">{PHP.L.Lastpost}: {FORUMS_TOPICS_ROW_LASTPOSTER}</small><br> <!-- Последний автор -->
                <small class="text-body-secondary">{FORUMS_TOPICS_ROW_TIMEAGO}</small> <!-- Время последнего поста -->
              </div> <!-- Закрывает правую колонку -->
            </div> <!-- Закрывает строку -->
          </div> <!-- Закрывает элемент списка -->
          <!-- END: FORUMS_TOPICS_ROW --> <!-- Закрывает цикл тем -->
        </div> <!-- Закрывает список -->
      </div> <!-- Закрывает тело карточки -->
    </div> <!-- Закрывает карточку -->

    <!-- Пагинация и зрители -->
    <div class="d-flex flex-wrap gap-3 justify-content-center mt-3"> <!-- Контейнер пагинации -->
      <!-- BEGIN: FORUMS_SECTIONS_VIEWERS --> <!-- Условие зрителей -->
      <span>{PHP.L.forums_viewers}: {FORUMS_TOPICS_VIEWERS} {FORUMS_TOPICS_VIEWER_NAMES}</span> <!-- Список зрителей -->
      <!-- END: FORUMS_SECTIONS_VIEWERS --> <!-- Закрывает условие -->
      <span>{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}</span> <!-- Пагинация -->
    </div> <!-- Закрывает контейнер -->
  </div> <!-- Закрывает основной контейнер -->
</div> <!-- Закрывает главный контейнер -->
  <!-- Modal -->
  <div class="modal fade" id="info_icons" tabindex="-1" aria-labelledby="infoiconsLabel" aria-hidden="true"> <!-- Модальное окно для информации о вставке -->
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"> <!-- Центрированный диалог с прокруткой -->
      <div class="modal-content"> <!-- Контент модального окна -->
        <div class="modal-header"> <!-- Заголовок -->
          <h1 class="modal-title fs-5" id="infoiconsLabel">{PHP.L.CleanCot_forums_info_icons}</h1> <!-- Заголовок с уникальным ID из Cotonti -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> <!-- Кнопка закрытия -->
        </div>
        <div class="modal-body"> <!-- Тело -->
      <div class="row row-cols-1 row-cols-md-2 g-3 small"> <!-- Сетка Bootstrap -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts}</span>{PHP.L.forums_nonewposts} <!-- Нет новых постов -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_new}</span>{PHP.L.forums_newposts} <!-- Новые посты -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_hot}</span>{PHP.L.forums_nonewpostspopular} <!-- Популярно, нет новых -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_new_hot}</span>{PHP.L.forums_newpostspopular} <!-- Популярно, новые -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_sticky}</span>{PHP.L.forums_sticky} <!-- Прикреплено -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_new_sticky}</span>{PHP.L.forums_newpostssticky} <!-- Прикреплено, новые -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_locked}</span>{PHP.L.forums_locked} <!-- Закрыто -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_new_locked}</span>{PHP.L.forums_newpostslocked} <!-- Закрыто, новые -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_sticky_locked}</span>{PHP.L.forums_announcment} <!-- Объявление -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_new_sticky_locked}</span>{PHP.L.forums_newannouncment} <!-- Новое объявление -->
        </div> <!-- Закрывает колонку -->
        <div class="col"> <!-- Колонка -->
          <span class="me-1">{PHP.R.forums_icon_posts_moved}</span>{PHP.L.forums_movedoutofthissection} <!-- Перемещено -->
        </div> <!-- Закрывает колонку -->
      </div> <!-- Закрывает сетку -->
        </div>
        <div class="modal-footer"> <!-- Футер -->
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> <!-- Кнопка закрытия -->
        </div>
      </div>
    </div>
  </div>

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: пользователь — администратор -->
<div class="container py-5"> <!-- Контейнер для уведомления с отступами -->
  <div class="alert alert-warning" role="alert"> <!-- Предупреждение Bootstrap -->
    <strong>{PHP.usr.name}</strong>, This is the HTML template <!-- Текст уведомления -->
    <code>forums.topics.tpl</code> <!-- Имя шаблона в кодовом стиле -->
  </div> <!-- Закрывает предупреждение -->
</div> <!-- Закрывает контейнер уведомления -->
<!-- ENDIF --> <!-- Закрывает условие для админа -->
<!-- END: MAIN --> <!-- Закрывает основной блок -->