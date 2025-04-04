<!-- 
/********************************************************************************
 * File: page.list.unvalidated.tpl
 * Extention: module 'page'
 * Description: This is an HTML template for a page with a list of articles for moderation. You must create a category with the code "unvalidated" in the Pages module.
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
<!-- BEGIN: MAIN --> <!-- Открывает основной блок шаблона Cotonti -->
  <div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер хлебных крошек с светлым фоном и синей нижней границей -->
    <div class="container py-2"> <!-- Внутренний контейнер с вертикальными отступами -->
      <nav aria-label="breadcrumb"> <!-- Навигация для хлебных крошек с ARIA-меткой -->
        <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек без нижнего отступа, с горизонтальной прокруткой -->
          {LIST_BREADCRUMBS} <!-- Выводит хлебные крошки для страницы -->
        </ol> <!-- Закрывает список хлебных крошек -->
      </nav> <!-- Закрывает навигацию -->
    </div> <!-- Закрывает внутренний контейнер -->
  </div> <!-- Закрывает панель хлебных крошек -->

  <div class=""> <!-- Главный контейнер без дополнительных классов -->
    <div class="container-md min-height-50vh d-flex flex-column justify-content-center pb-5"> <!-- Контейнер средней ширины с минимальной высотой, flex-выравниванием и нижним отступом -->
      {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает шаблон предупреждений из темы -->
      <div class="row"> <!-- Сетка Bootstrap для содержимого -->
        <!-- Основной контент -->
        <div class="col-12 col-md-8 mx-auto pt-4"> <!-- Колонка: 100% на малых, 8/12 с автоцентрированием на средних, с верхним отступом -->
          <!-- BEGIN: LIST_ROW --> <!-- Открывает цикл записей -->
            <div class="card mb-4"> <!-- Карточка записи с нижним отступом -->
              <div class="card-header bg-secondary-subtle text-dark"> <!-- Заголовок карточки с серым фоном и тёмным текстом -->
                <h2 class="h5 card-title mb-0"><a href="{LIST_ROW_URL}" title="{LIST_ROW_TITLE}">{LIST_ROW_TITLE}</a></h2> <!-- Заголовок записи размером h5 без отступа -->
              </div> <!-- Закрывает заголовок карточки -->
              <div class="card-body"> <!-- Тело карточки -->
                <p class="mb-1"><strong>{PHP.L.Status}:</strong> <span class="badge bg-warning">{LIST_ROW_LOCAL_STATUS}</span></p> <!-- Статус записи с жёлтым бейджем -->
                <!-- Описание -->
                <!-- IF {LIST_ROW_DESCRIPTION} --> <!-- Условие: если есть описание -->
                  <p class="card-text text-muted small">{LIST_ROW_DESCRIPTION}</p> <!-- Описание мелким шрифтом -->
                <!-- ENDIF --> <!-- Закрывает условие описания -->
                <!-- Текст новости -->
                <div class="card-text"> <!-- Контейнер текста записи -->
                  {LIST_ROW_TEXT_CUT|strip_tags($this)} <!-- Урезанный текст без тегов -->
                  <!-- IF {LIST_ROW_TEXT_IS_CUT} --> <!-- Условие: если текст был обрезан -->
                    <a href="{LIST_ROW_URL}" class="btn btn-outline-primary btn-sm mt-2">{PHP.L.ReadMore}</a> <!-- Кнопка "Читать далее" -->
                  <!-- ENDIF --> <!-- Закрывает условие обрезки текста -->
                  <!-- IF {LIST_ROW_ADMIN} --> <!-- Условие: если доступны админ-действия -->
                    {LIST_ROW_ADMIN_EDIT} {LIST_ROW_ADMIN_DELETE} ({LIST_ROW_HITS}) <!-- Ссылки на редактирование, удаление и число просмотров -->
                  <!-- ENDIF --> <!-- Закрывает условие админ-действий -->
                </div> <!-- Закрывает контейнер текста -->
                <!-- Количество комментариев -->
				<!-- IF {LIST_ROW_COMMENTS_COUNT} > 0 -->
                <div class="position-absolute top-0 end-0 mt-2 me-2"> <!-- Значок комментариев с абсолютным позиционированием -->
                  <span class="badge bg-primary">{LIST_ROW_COMMENTS_COUNT}</span> <!-- Число комментариев в синем бейдже -->
                </div> <!-- Закрывает значок -->
				<!-- ENDIF --> 
              </div> <!-- Закрывает тело карточки -->
            </div> <!-- Закрывает карточку записи -->
          <!-- END: LIST_ROW --> <!-- Закрывает цикл записей -->

          <!-- Пагинация -->
          <!-- IF {LIST_PAGINATION} --> <!-- Условие: если есть пагинация -->
            <nav aria-label="Page Pagination" class="mt-3"> <!-- Навигация пагинации с ARIA-меткой и отступом -->
              <div class="text-center mb-2">{PHP.L.Page} {LIST_CURRENT_PAGE} {PHP.L.Of} {LIST_TOTAL_PAGES}</div> <!-- Текущая страница и общее число страниц -->
              <ul class="pagination justify-content-center"> <!-- Список пагинации с выравниванием по центру -->
                {LIST_PREVIOUS_PAGE} <!-- Ссылка на предыдущую страницу -->
                {LIST_PAGINATION} <!-- Навигация по страницам -->
                {LIST_NEXT_PAGE} <!-- Ссылка на следующую страницу -->
              </ul> <!-- Закрывает список пагинации -->
            </nav> <!-- Закрывает навигацию пагинации -->
          <!-- ENDIF --> <!-- Закрывает условие пагинации -->
        </div> <!-- Закрывает колонку основного контента -->

        <!-- Боковая панель -->
        <div class="col-12 col-md-4 mx-auto"> <!-- Колонка: 100% на малых, 4/12 с автоцентрированием на средних -->
          <!-- Админ-блок -->
          <!-- IF {PHP.usr.auth_write} --> <!-- Условие: если есть права на запись -->
            <div class="card mt-4 mb-4"> <!-- Карточка админ-блока с отступами -->
              <div class="card-header bg-warning text-dark"> <!-- Заголовок с жёлтым фоном и тёмным текстом -->
                <h2 class="h5 mb-0">{PHP.L.Admin}</h2> <!-- Заголовок "Админ" размером h5 без отступа -->
              </div> <!-- Закрывает заголовок карточки -->
              <div class="card-body"> <!-- Тело карточки -->
                <ul class="list-unstyled mb-0"> <!-- Список без стилей и отступа -->
                  <!-- IF {PHP.usr.isadmin} --> <!-- Условие: пользователь — администратор -->
                    <li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li> <!-- Ссылка на админ-панель -->
                  <!-- ENDIF --> <!-- Закрывает условие администратора -->
                  <li>{LIST_SUBMIT_NEW_PAGE}</li> <!-- Действие добавления новой страницы -->
                </ul> <!-- Закрывает список -->
              </div> <!-- Закрывает тело карточки -->
            </div> <!-- Закрывает карточку админ-блока -->
          <!-- ENDIF --> <!-- Закрывает условие прав на запись -->
        </div> <!-- Закрывает колонку боковой панели -->
      </div> <!-- Закрывает сетку -->
    </div> <!-- Закрывает контейнер -->
  </div> <!-- Закрывает главный контейнер -->

  <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие: пользователь — админ и активен mskin -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"} <!-- Подключает дополнительный шаблон для админов -->
  <!-- ENDIF --> <!-- Закрывает условие подключения mskin -->
<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->