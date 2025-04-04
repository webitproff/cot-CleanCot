<!-- 
/********************************************************************************
 * File: forums.sections.tpl
 * Description: This is an HTML template for the main page of the forums module. It displays a list of forum sections (categories).
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
<div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер для хлебных крошек с светлым фоном и нижней границей -->
  <div class="container py-2"> <!-- Внутренний контейнер с отступами -->
    <nav aria-label="breadcrumb" class="d-flex justify-content-between align-items-center"> <!-- Навигация с выравниванием -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек без нижнего отступа -->
        {FORUMS_SECTIONS_PAGETITLE} <!-- Вывод заголовка страницы в виде крошек -->
      </ol> <!-- Закрывает список крошек -->
      <a href="{FORUMS_POSTS_RSS}" class="ms-2" title="RSS" data-bs-toggle="tooltip" data-bs-placement="top"> <!-- Ссылка на RSS с тултипом -->
        <i class="fa-solid fa-rss"></i> <!-- Иконка RSS -->
      </a> <!-- Закрывает ссылку на RSS -->
    </nav> <!-- Закрывает навигацию -->
  </div> <!-- Закрывает контейнер крошек -->
</div> <!-- Закрывает панель хлебных крошек -->

<!-- Основной контейнер -->
<div class="py-4"> <!-- Главный контейнер с вертикальными отступами -->
  <div class="container-xl"> <!-- Контейнер Bootstrap с увеличенной шириной -->
    <!-- Навигация -->
    <div class="mobile-menu-wrapper my-3 my-md-4"> <!-- Обёртка меню с отступами -->
      <ul class="nav nav-pills pills-menu dataset-pills"> <!-- Список навигации в стиле Bootstrap pills -->
        <li class="nav-item"> <!-- Элемент меню -->
           <a class="nav-link" href="{PHP|cot_url('forums','c=fold#top')}" rel="nofollow"
                   onclick="return toggleAll('hide')">{PHP.L.forums_foldall}</a> <!-- Ссылка "Свернуть все" -->
        </li> <!-- Закрывает элемент -->
        <li class="nav-item"> <!-- Элемент меню, активный -->
          <a class="nav-link" href="{PHP|cot_url('forums','c=unfold#top')}" rel="nofollow"
                        onclick="return toggleAll('show')">{PHP.L.forums_unfoldall}</a> <!-- Текст "Развернуть все" без ссылки -->
        </li> <!-- Закрывает элемент -->
      </ul> <!-- Закрывает список навигации -->
    </div> <!-- Закрывает обёртку меню -->

    <!-- Секции форума -->
    <!-- BEGIN: FORUMS_SECTIONS --> <!-- Открывает цикл категорий форума -->
    <div class="card mb-5"> <!-- Карточка для каждой категории с нижним отступом -->
      <!-- BEGIN: CAT --> <!-- Открывает цикл для каждой категории -->
      <div class="card-header bg-primary-subtle"> <!-- Заголовок карточки с мягким синим фоном -->
        <h2 class="h5 mb-0 text-primary-emphasis text-decoration-none"> <!-- Заголовок категории размером h5 -->
          <i class="fa-solid fa-folder me-2"></i> <!-- Иконка папки -->
          <a class="text-primary-emphasis text-decoration-none" href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" nclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')" title="{FORUMS_SECTIONS_ROW_TITLE}"> <!-- Ссылка на категорию с функцией сворачивания -->
            {FORUMS_SECTIONS_ROW_TITLE} <!-- Название категории -->
          </a> <!-- Закрывает ссылку -->
        </h2> <!-- Закрывает заголовок -->
      </div> <!-- Закрывает заголовок карточки -->
      <div class="card-body p-0" id="blk_{FORUMS_SECTIONS_ROW_CAT}"<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF -->> <!-- Тело карточки без отступов, скрыто при свёрнутости -->
        <div class="list-group list-striped list-group-flush"> <!-- Список секций с чередующимися полосами и без границ -->
          <!-- BEGIN: SECTION --> <!-- Открывает цикл секций внутри категории -->
          <div class="list-group-item list-group-item-action"> <!-- Элемент списка с эффектом клика -->
            <div class="row g-3"> <!-- Строка Bootstrap с отступами между колонками -->
              <div class="col-12 col-md-8"> <!-- Колонка: 100% на мобильных, 8/12 на средних экранах -->
                <h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis"> <!-- Заголовок секции -->
                  <!-- IF {FORUMS_SECTIONS_ROW_ICON} --> <!-- Условие: есть иконка секции -->
                    <span class="text-muted small m-0 me-1">{FORUMS_SECTIONS_ROW_ICON}</span> <!-- Вывод иконки -->
                  <!-- ELSE --> <!-- Условие: иконки нет -->
                    <span class="text-primary me-1"><i class="fa-solid fa-comments"></i></span> <!-- Дефолтная иконка комментариев -->
                  <!-- ENDIF --> <!-- Закрывает условие иконки -->
                  <a class="text-reset text-decoration-none" href="{FORUMS_SECTIONS_ROW_URL}" title="{FORUMS_SECTIONS_ROW_TITLE}">{FORUMS_SECTIONS_ROW_TITLE}</a> <!-- Ссылка на секцию -->
                </h5> <!-- Закрывает заголовок -->
                <!-- IF {FORUMS_SECTIONS_ROW_DESC} --> <!-- Условие: есть описание -->
                <p class="mb-1 text-muted">{FORUMS_SECTIONS_ROW_DESC}</p> <!-- Описание секции -->
                <!-- ENDIF --> <!-- Закрывает условие описания -->
                <!-- IF {FORUMS_SECTIONS_ROW_SUBSECTION} --> <!-- Условие: есть подсекции -->
                <div class="subforums text-muted"> <!-- Контейнер подсекций -->
                  <div class="font-weight-bold my-2"> <!-- Заголовок подсекций -->
                    <i class="fa-solid fa-level-down-alt me-2"></i> {PHP.L.CleanCot_Subsections}: <!-- Иконка и текст "Подсекции" -->
                  </div> <!-- Закрывает заголовок подсекций -->
                  <!-- BEGIN: SUBSECTION --> <!-- Открывает цикл подсекций -->
                  <div class="small mb-1"> <!-- Элемент подсекции -->
                    <i class="fa-solid fa-comment me-2"></i> <!-- Иконка комментария -->
                    <a href="{FORUMS_SECTIONS_ROW_URL}" class="text-muted" title="{FORUMS_SECTIONS_ROW_TITLE}">{FORUMS_SECTIONS_ROW_TITLE}</a> <!-- Ссылка на подсекцию -->
                  </div> <!-- Закрывает элемент подсекции -->
                  <!-- END: SUBSECTION --> <!-- Закрывает цикл подсекций -->
                </div> <!-- Закрывает контейнер подсекций -->
                <!-- ENDIF --> <!-- Закрывает условие подсекций -->
              </div> <!-- Закрывает левую колонку -->
              <div class="col-12 col-md-4 text-center"> <!-- Колонка: 100% на мобильных, 4/12 на средних экранах, текст по центру -->
                <div> <!-- Контейнер мета-информации -->
                  <small class="text-body-secondary">{PHP.L.forums_topics}: {FORUMS_SECTIONS_ROW_TOPICCOUNT}</small> <!-- Количество тем -->
                  
                  <small class="text-body-secondary">{PHP.L.forums_posts}: {FORUMS_SECTIONS_ROW_POSTCOUNT}</small> <!-- Количество постов -->
                  <br> <!-- Перенос строки -->
				  <!-- IF {FORUMS_SECTIONS_ROW_LASTPOST} -->
                  <small class="text-body-secondary">{FORUMS_SECTIONS_ROW_LASTPOST}: {FORUMS_SECTIONS_ROW_LASTPOSTER} - {FORUMS_SECTIONS_ROW_LASTPOSTDATE}</small> <!-- Последний автор и дата -->
				  <!-- ENDIF -->
                </div> <!-- Закрывает контейнер мета-информации -->
              </div> <!-- Закрывает правую колонку -->
            </div> <!-- Закрывает строку Bootstrap -->
          </div> <!-- Закрывает элемент списка -->
          <!-- END: SECTION --> <!-- Закрывает цикл секций -->
        </div> <!-- Закрывает список -->
      </div> <!-- Закрывает тело карточки -->
      <!-- END: CAT --> <!-- Закрывает цикл категорий -->
    </div> <!-- Закрывает карточку -->
    <!-- END: FORUMS_SECTIONS --> <!-- Закрывает цикл категорий форума -->

    <!-- Навигация внизу -->
    <div class="d-flex flex-wrap gap-3 justify-content-center mt-3"> <!-- Контейнер нижней навигации с flex-выравниванием -->
      <!-- IF {PHP|cot_plugin_active('search')} --> <!-- Условие: активен плагин поиска -->
      <span><a href="{PHP|cot_url('plug','e=search&tab=frm')}">{PHP.L.forums_searchinforums}</a></span> <!-- Ссылка "Поиск по форумам" -->
      <!-- ENDIF --> <!-- Закрывает условие поиска -->
      <!-- IF {PHP|cot_plugin_active('forumstats')} --> <!-- Условие: активен плагин статистики -->
      <span><a href="{PHP|cot_url('plug','e=forumstats')}">{PHP.L.Statistics}</a></span> <!-- Ссылка "Статистика" -->
      <!-- ENDIF --> <!-- Закрывает условие статистики -->
      <span><a href="{FORUMS_SECTIONS_MARKALL_URL}" rel="nofollow">{PHP.L.forums_markasread}</a></span> <!-- Ссылка "Пометить как прочитанное" -->
    </div> <!-- Закрывает нижнюю навигацию -->
  </div> <!-- Закрывает основной контейнер -->

  <!-- Теги -->
  <div class="container-xl mt-4"> <!-- Контейнер для тегов с верхним отступом -->
    <div class="card"> <!-- Карточка для тегов -->
      <div class="card-body"> <!-- Тело карточки -->
        <h2 class="tags h5 mb-3">{PHP.L.Tags}</h2> <!-- Заголовок "Теги" -->
        {FORUMS_SECTIONS_TAG_CLOUD} <!-- Облако тегов -->
      </div> <!-- Закрывает тело карточки -->
    </div> <!-- Закрывает карточку -->
  </div> <!-- Закрывает контейнер тегов -->
</div> <!-- Закрывает основной контейнер -->

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: пользователь — администратор -->
<div class="container py-5"> <!-- Контейнер для уведомления с отступами -->
  <div class="alert alert-warning" role="alert"> <!-- Предупреждение Bootstrap -->
    <strong>{PHP.usr.name}</strong>, This is the HTML template <!-- Текст уведомления -->
    <code>forums.sections.tpl</code> <!-- Имя шаблона в кодовом стиле -->
  </div> <!-- Закрывает предупреждение -->
</div> <!-- Закрывает контейнер уведомления -->
<!-- ENDIF --> <!-- Закрывает условие для админа -->

<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->