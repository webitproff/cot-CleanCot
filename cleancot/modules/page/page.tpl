<!-- 
/********************************************************************************
 * File: page.tpl
 * Extention: module 'page'
 * Description: This is an HTML template for a simple (simplified) full news or article page. The default is used for articles of all categories.
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
  <div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер хлебных крошек с светлым фоном и серой нижней границей -->
    <div class="container py-2"> <!-- Внутренний контейнер с вертикальными отступами -->
      <nav aria-label="breadcrumb"> <!-- Навигация для хлебных крошек с ARIA-меткой -->
        <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек без нижнего отступа, с горизонтальной прокруткой -->
          {PAGE_BREADCRUMBS} <!-- Выводит хлебные крошки для страницы -->
        </ol> <!-- Закрывает список хлебных крошек -->
      </nav> <!-- Закрывает навигацию -->
    </div> <!-- Закрывает внутренний контейнер -->
  </div> <!-- Закрывает панель хлебных крошек -->

  <div class=""> <!-- Главный контейнер без дополнительных классов -->
    <div class="container-md d-flex flex-column justify-content-center"> <!-- Контейнер средней ширины с flex-выравниванием по центру -->
      {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает шаблон предупреждений из темы -->
      <div class="row"> <!-- Сетка Bootstrap для содержимого -->
        <!-- Main content: full width on mobile (col-12), 8/12 on medium+ (col-md-8) -->
        <div class="col-12 col-md-8 mx-auto pb-5"> <!-- Колонка: 100% на малых, 8/12 с автоцентрированием на средних, с нижним отступом -->
          <div class="card mt-4 mb-4"> <!-- Карточка с отступами сверху и снизу -->
            <div class="card-header bg-warning text-dark"> <!-- Заголовок карточки с жёлтым фоном и тёмным текстом -->
              <h2 class="h5 mb-0">{PAGE_TITLE}</h2> <!-- Заголовок страницы размером h5 без нижнего отступа -->
            </div> <!-- Закрывает заголовок карточки -->
            <div class="card-body"> <!-- Тело карточки -->
              <!-- IF {PAGE_COMMENTS_COUNT} > 0 --> <!-- Условие: если есть комментарии -->
                <div class="mb-3">{PHP.L.CleanCot_Comments}: {PAGE_COMMENTS_COUNT}</div> <!-- Выводит число комментариев с отступом -->
              <!-- ENDIF --> <!-- Закрывает условие комментариев -->
              <!-- Description -->
              <!-- IF {PAGE_DESCRIPTION} --> <!-- Условие: если есть описание -->
                <p class="small mb-3">{PAGE_DESCRIPTION}</p> <!-- Описание мелким шрифтом с нижним отступом -->
              <!-- ENDIF --> <!-- Закрывает условие описания -->

              <!-- Tags and category -->
              <div class="row g-3 mb-3"> <!-- Сетка с отступами для тегов и категории -->
                <div class="col-12 col-md-6"> <!-- Колонка: 100% на малых, 6/12 на средних -->
                  <strong>{PHP.L.Tags}:</strong> <!-- Метка "Теги" жирным шрифтом -->
                  <!-- BEGIN: PAGE_TAGS_ROW --> <!-- Открывает цикл вывода тегов -->
                    <!-- IF {PHP.tag_i} > 0 -->, <!-- Добавляет запятую перед тегом, если не первый -->
                    <!-- ENDIF --> <!-- Закрывает условие запятой -->
                    <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a> <!-- Ссылка на тег -->
                  <!-- END: PAGE_TAGS_ROW --> <!-- Закрывает цикл тегов -->
                  <!-- BEGIN: PAGE_NO_TAGS --> <!-- Открывает блок для случая без тегов -->
                    {PAGE_NO_TAGS} <!-- Выводит сообщение об отсутствии тегов -->
                  <!-- END: PAGE_NO_TAGS --> <!-- Закрывает блок отсутствия тегов -->
                </div> <!-- Закрывает колонку тегов -->
                <div class="col-12 col-md-6 text-md-end"> <!-- Колонка: 100% на малых, 6/12 с выравниванием вправо на средних -->
                  <strong>{PHP.L.Filedunder}:</strong> {PAGE_CAT_PATH} <!-- Метка "Категория" и путь категории -->
                </div> <!-- Закрывает колонку категории -->
              </div> <!-- Закрывает сетку тегов и категории -->

              <!-- News text -->
              <div class="mb-3">{PAGE_TEXT}</div> <!-- Выводит текст новости с отступом -->

              <!-- News file -->
              <!-- BEGIN: PAGE_FILE --> <!-- Открывает блок прикреплённого файла -->
                <div class="mb-3"> <!-- Контейнер файла с нижним отступом -->
                  <!-- BEGIN: MEMBERSONLY --> <!-- Открывает блок ограниченного доступа -->
                    <p>{PAGE_TITLE}</p> <!-- Заголовок страницы для ограниченного доступа -->
                  <!-- END: MEMBERSONLY --> <!-- Закрывает блок ограниченного доступа -->
                  <!-- BEGIN: DOWNLOAD --> <!-- Открывает блок скачивания -->
                    <p>{PHP.L.Download}: <a class="fw-bold" href="{PAGE_FILE_URL}">{PAGE_TITLE}</a></p> <!-- Ссылка на скачивание файла жирным шрифтом -->
                  <!-- END: DOWNLOAD --> <!-- Закрывает блок скачивания -->
				  <!-- IF {PAGE_FILE_SIZE} -->
                  <p>{PHP.L.Filesize}, kB: {PAGE_FILE_SIZE}{PHP.L.kb}</p> <!-- Размер файла в килобайтах -->
				  <!-- ENDIF -->
                  <p>{PHP.L.Downloaded}: {PAGE_FILE_DOWNLOADS_TIMES} </p> <!-- Число скачиваний -->
                </div> <!-- Закрывает контейнер файла -->
              <!-- END: PAGE_FILE --> <!-- Закрывает блок файла -->
            </div> <!-- Закрывает тело карточки -->
          </div> <!-- Закрывает карточку -->

          <!-- Comments -->
          <!-- IF {PHP|cot_plugin_active('comments')} --> <!-- Условие: активен плагин 'comments' -->
            {PAGE_COMMENTS} <!-- Выводит блок комментариев -->
          <!-- ENDIF --> <!-- Закрывает условие комментариев -->
        </div> <!-- Закрывает колонку основного контента -->

        <!-- Sidebar: full width on mobile (col-12), 4/12 on medium+ (col-md-4) -->
        <div class="col-12 col-md-4 mx-auto"> <!-- Колонка: 100% на малых, 4/12 с автоцентрированием на средних -->
          <!-- Admin panel -->
          <!-- BEGIN: PAGE_ADMIN --> <!-- Открывает блок админ-панели -->
            <div class="card mt-4 mb-4"> <!-- Карточка админ-панели с отступами -->
              <div class="card-header bg-warning text-dark"> <!-- Заголовок с жёлтым фоном и тёмным текстом -->
                <h2 class="h5 mb-0">{PHP.L.Adminpanel}</h2> <!-- Заголовок "Админ-панель" размером h5 без отступа -->
              </div> <!-- Закрывает заголовок карточки -->
              <div class="card-body p-0"> <!-- Тело карточки без внутренних отступов -->
                <ul class="list-group list-group-flush"> <!-- Список без границ -->
                  <!-- IF {PHP.usr.isadmin} --> <!-- Условие: пользователь — администратор -->
                    <li class="list-group-item"> <!-- Элемент списка -->
                      <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a> <!-- Ссылка на админ-панель -->
                    </li> <!-- Закрывает элемент списка -->
                  <!-- ENDIF --> <!-- Закрывает условие администратора -->
                  <li class="list-group-item"> <!-- Элемент списка -->
                    <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a> <!-- Ссылка на добавление страницы -->
                  </li> <!-- Закрывает элемент списка -->
                  <li class="list-group-item">{PAGE_ADMIN_UNVALIDATE}</li> <!-- Элемент списка с действием проверки -->
                  <li class="list-group-item">{PAGE_ADMIN_EDIT}</li> <!-- Элемент списка с действием редактирования -->
                  <li class="list-group-item">{PAGE_ADMIN_CLONE}</li> <!-- Элемент списка с действием клонирования -->
                  <li class="list-group-item">{PAGE_ADMIN_DELETE}</li> <!-- Элемент списка с действием удаления -->
                  <!-- IF {PAGE_I18N_TRANSLATE} --> <!-- Условие: доступен перевод -->
                    <li class="list-group-item">{PAGE_I18N_TRANSLATE}</li> <!-- Элемент списка с действием перевода -->
                  <!-- ENDIF --> <!-- Закрывает условие перевода -->
                  <!-- IF {PAGE_I18N_DELETE} --> <!-- Условие: доступно удаление перевода -->
                    <li class="list-group-item">{PAGE_I18N_DELETE}</li> <!-- Элемент списка с действием удаления перевода -->
                  <!-- ENDIF --> <!-- Закрывает условие удаления перевода -->
                </ul> <!-- Закрывает список -->
              </div> <!-- Закрывает тело карточки -->
            </div> <!-- Закрывает карточку админ-панели -->
          <!-- END: PAGE_ADMIN --> <!-- Закрывает блок админ-панели -->

          <!-- Summary -->
          <!-- BEGIN: PAGE_MULTI --> <!-- Открывает блок краткого содержания -->
            <div class="card mt-4 mb-4"> <!-- Карточка краткого содержания с отступами -->
              <div class="card-header bg-warning text-dark"> <!-- Заголовок с жёлтым фоном и тёмным текстом -->
                <h2 class="h5 mb-0">{PHP.L.Summary}</h2> <!-- Заголовок "Сводка" размером h5 без отступа -->
              </div> <!-- Закрывает заголовок карточки -->
              <div class="card-body"> <!-- Тело карточки -->
                {PAGE_MULTI_TABTITLES} <!-- Выводит заголовки вкладок -->
                <p class="mb-0">{PAGE_MULTI_TABNAV}</p> <!-- Выводит навигацию по вкладкам без отступа -->
              </div> <!-- Закрывает тело карточки -->
            </div> <!-- Закрывает карточку краткого содержания -->
          <!-- END: PAGE_MULTI --> <!-- Закрывает блок краткого содержания -->
        </div> <!-- Закрывает колонку боковой панели -->
      </div> <!-- Закрывает сетку -->
    </div> <!-- Закрывает контейнер -->
  </div> <!-- Закрывает главный контейнер -->

  <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие: пользователь — админ и активен mskin -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"} <!-- Подключает дополнительный шаблон для админов -->
  <!-- ENDIF --> <!-- Закрывает условие подключения mskin -->
<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->
