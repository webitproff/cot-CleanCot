<!-- 
/********************************************************************************
 * File: forums.posts.tpl
 * Description: This is an HTML template of a forum topic, its controls, and a list of user posts in this topic.
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

  <!-- IF {PHP|cot_module_active('files')} AND {PHP.env.location} == 'forums' AND {PHP.m} == 'posts' --> <!-- Условие: проверка, что активен модуль files, что мы в локации форумов, и в режиме списка постов (m=posts) -->
    <!-- Подключение скрипта lightbox.js только на странице списка постов в теме форума (режим m=posts) -->
    <script src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/js/lightbox.js"></script> <!-- Подключает lightbox.js для работы с изображениями из модуля 'files' -->
  <!-- ENDIF --> <!-- Закрывает условие подключения скрипта -->
  
		<style>
		  .breadcrumb-wrapper {
			max-width: calc(100% - 40px); /* Учитываем ширину RSS-иконки и отступ */
			overflow: hidden; /* Скрываем лишнее за пределами контейнера */
		  }
		  .breadcrumb {
			white-space: nowrap;
			overflow-x: auto;
			-webkit-overflow-scrolling: touch;
		  }
			.breadcrumb-wrapper::-webkit-scrollbar {
			height: 6px;
		  }
		</style> 
  <!-- Панель хлебных крошек -->
  <div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер хлебных крошек с светлым фоном и нижней границей -->
    <div class="container py-2"> <!-- Внутренний контейнер с вертикальными отступами -->
      <nav aria-label="breadcrumb" class="d-flex justify-content-between align-items-center"> <!-- Навигация с flex-выравниванием по краям и центру -->
	  <div class="breadcrumb-wrapper">
        <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек без нижнего отступа, с горизонтальной прокруткой -->
          {FORUMS_POSTS_BREADCRUMBS} <!-- Выводит хлебные крошки для текущей страницы -->
        </ol> <!-- Закрывает список хлебных крошек -->
		</div>
		<!-- IF {PHP|cot_module_active('rss')} -->
        <a href="{FORUMS_POSTS_RSS}" class="ms-2" title="RSS" data-bs-toggle="tooltip" data-bs-placement="top"> <!-- Ссылка на RSS с отступом слева и тултипом -->
          <i class="fa-solid fa-rss"></i> <!-- Иконка RSS из Font Awesome -->
        </a> <!-- Закрывает ссылку на RSS -->
		<!-- ENDIF -->
      </nav> <!-- Закрывает навигацию -->
    </div> <!-- Закрывает внутренний контейнер хлебных крошек -->
  </div> <!-- Закрывает панель хлебных крошек -->

  <!-- Основной контейнер -->
  <div class="py-4"> <!-- Главный контейнер с вертикальными отступами -->
    <div class="container-xl"> <!-- Контейнер Bootstrap xl-ширины -->
      <h1 class="h4">{FORUMS_POSTS_TITLE}</h1> <!-- Заголовок темы размером h4 -->
      <!-- IF {FORUMS_POSTS_TOPICDESC} --> <!-- Условие: если есть описание темы -->
        <h2 class="h6 mb-4">{FORUMS_POSTS_TOPICDESC}</h2> <!-- Описание темы размером h6 с нижним отступом -->
      <!-- ENDIF --> <!-- Закрывает условие описания темы -->

      <!-- Приватная тема -->
      <!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE --> <!-- Открывает блок для приватной темы -->
        <div class="alert alert-danger mb-3">{PHP.L.forums_privatetopic}</div> <!-- Предупреждение о приватной теме с красным стилем и отступом -->
      <!-- END: FORUMS_POSTS_TOPICPRIVATE --> <!-- Закрывает блок приватной темы -->

      <!-- Опрос -->
      <!-- BEGIN: POLLS_VIEW --> <!-- Открывает блок опроса -->
        <div class="card mb-4"> <!-- Карточка опроса с нижним отступом -->
          <div class="card-body"> <!-- Тело карточки -->
            <h2 class="polls h5 mb-3">{POLLS_TITLE}</h2> <!-- Заголовок опроса размером h5 с отступом -->
            {POLLS_FORM} <!-- Форма опроса -->
          </div> <!-- Закрывает тело карточки -->
        </div> <!-- Закрывает карточку опроса -->
      <!-- END: POLLS_VIEW --> <!-- Закрывает блок опроса -->

      <!-- Админ-опции -->
      <!-- BEGIN: FORUMS_POSTS_ADMIN --> <!-- Открывает блок админ-опций -->
        <div class="card mb-4"> <!-- Карточка админ-опций с нижним отступом -->
          <div class="card-body"> <!-- Тело карточки -->
            <div class="row g-3 align-items-center"> <!-- Сетка Bootstrap с отступами и выравниванием -->
              <div class="col-md-3 col-12"> <!-- Колонка для метки, 3/12 на средних экранах, 100% на малых -->
                <label class="form-label fw-semibold">{PHP.L.forums_topicoptions}:</label> <!-- Метка "Опции темы" жирным шрифтом -->
              </div> <!-- Закрывает колонку метки -->
              <div class="col-md-9 col-12"> <!-- Колонка для опций, 9/12 на средних экранах, 100% на малых -->
                <div class="d-flex flex-wrap gap-2 small"> <!-- Flex-контейнер для опций с переносом и отступами -->
                  <a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a> <!-- Ссылка "Поднять тему" с тултипом -->
                  <span>{PHP.cfg.separator}</span> <!-- Разделитель из конфигурации -->
                  <a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}">{PHP.L.Lock}</a> <!-- Ссылка "Закрыть тему" с тултипом -->
                  <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                  <a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a> <!-- Ссылка "Прикрепить тему" с тултипом -->
                  <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                  <a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a> <!-- Ссылка "Объявление" с тултипом -->
                  <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                  <a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private} (#)</a> <!-- Ссылка "Приватная тема" с тултипом -->
                  <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                  <a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a> <!-- Ссылка "По умолчанию" с тултипом -->
                  <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                  <a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}" class="confirmLink">{PHP.L.Delete}</a> <!-- Ссылка "Удалить" с тултипом и классом подтверждения -->
                </div> <!-- Закрывает flex-контейнер опций -->
              </div> <!-- Закрывает колонку опций -->
              <div class="col-md-3 col-12"> <!-- Колонка для метки "Переместить", 3/12 на средних экранах -->
                <label class="form-label fw-semibold">{PHP.L.Move}:</label> <!-- Метка "Переместить" жирным шрифтом -->
              </div> <!-- Закрывает колонку метки -->
              <div class="col-md-9 col-12"> <!-- Колонка для формы перемещения, 9/12 на средних экранах -->
                <form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="d-flex flex-wrap gap-2 align-items-center"> <!-- Форма перемещения темы с flex-выравниванием -->
                  {FORUMS_POSTS_MOVEBOX_SELECT} <!-- Выпадающий список для выбора раздела -->
                  <span class="small text-muted">{FORUMS_POSTS_MOVEBOX_KEEP} {PHP.L.forums_keepmovedlink}</span> <!-- Чекбокс и текст "Оставить ссылку" -->
                  <button type="submit" class="btn btn-primary btn-sm">{PHP.L.Move}</button> <!-- Кнопка "Переместить" -->
                </form> <!-- Закрывает форму перемещения -->
              </div> <!-- Закрывает колонку формы -->
            </div> <!-- Закрывает сетку админ-опций -->
          </div> <!-- Закрывает тело карточки -->
        </div> <!-- Закрывает карточку админ-опций -->
      <!-- END: FORUMS_POSTS_ADMIN --> <!-- Закрывает блок админ-опций -->

      <!-- Предупреждения -->
      {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает шаблон предупреждений -->

      <!-- Теги -->
      <div class="row"> <!-- Сетка Bootstrap для тегов и видео -->
        <!-- IF {FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE} --> 
		<!-- Условие: если есть видео YouTube -->
		<!-- в Управление сайтом / Прочее / Экстраполя / Таблица cot_forum_topics - Модуль Forums нужно создать экстраполе с названием xtr_fld_youtube -->
          <div class="col-md-6 col-12 mb-2 mb-md-0"> <!-- Колонка для кнопки видео, 6/12 на средних экранах -->
            <button type="button" class="btn btn-danger mb-3" data-bs-toggle="modal" data-bs-target="#videoModal"> <!-- Кнопка открытия модального окна с видео -->
              {FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE_TITLE} <!-- Название видео -->
            </button> <!-- Закрывает кнопку -->
          </div> <!-- Закрывает колонку видео -->
        <!-- ENDIF --> <!-- Закрывает условие видео -->
        <!-- IF {FORUMS_POSTS_TAGS} --> <!-- Условие: если есть теги -->
          <div class="col-md-6 mb-3 col-12"> <!-- Колонка для тегов, 6/12 на средних экранах -->
            {FORUMS_POSTS_TAGS} <!-- Выводит теги -->
          </div> <!-- Закрывает колонку тегов -->
        <!-- ENDIF --> <!-- Закрывает условие тегов -->
      </div> <!-- Закрывает сетку тегов -->

      <!-- Список постов -->
      <!-- BEGIN: FORUMS_POSTS_ROW --> <!-- Открывает цикл постов -->
        <div class="card mb-4"> <!-- Карточка для каждого поста с нижним отступом -->
          <div class="card-header bg-primary-subtle"> <!-- Заголовок карточки с мягким синим фоном -->
            <div class="row g-2 align-items-center"> <!-- Сетка Bootstrap с небольшими отступами и выравниванием -->
              <div class="col-auto d-none d-lg-block"> <!-- Колонка для "Автор", скрыта на экранах меньше lg -->
                {PHP.L.Author} <!-- Текст "Автор" -->
              </div> <!-- Закрывает колонку "Автор" -->
              <div class="col"> <!-- Колонка для мета-информации, занимает остальное место -->
                <div class="d-flex flex-wrap justify-content-lg-end gap-2 small text-muted"> <!-- Flex-контейнер для мета-данных, выравнивание вправо на lg -->
                  <a class="text-primary-emphasis text-decoration-none" name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow">#{FORUMS_POSTS_ROW_ORDER} {PHP.L.Message}</a> <!-- Ссылка на пост с номером и текстом "Сообщение" -->
                  <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                  {FORUMS_POSTS_ROW_CREATION} <!-- Дата создания поста -->
                  <!-- IF {FORUMS_POSTS_ROW_POSTERIP} --> <!-- Условие: если есть IP автора -->
                    <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                    {FORUMS_POSTS_ROW_POSTERIP} <!-- IP автора поста -->
                  <!-- ENDIF --> <!-- Закрывает условие IP -->
                  <!-- IF {FORUMS_POSTS_ROW_QUOTE} --> <!-- Условие: если доступна цитата -->
                    <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                    {FORUMS_POSTS_ROW_QUOTE} <!-- Кнопка цитирования -->
                  <!-- ENDIF --> <!-- Закрывает условие цитаты -->
                  <!-- IF {FORUMS_POSTS_ROW_EDIT} --> <!-- Условие: если доступно редактирование -->
                    <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                    {FORUMS_POSTS_ROW_EDIT} <!-- Кнопка редактирования -->
                  <!-- ENDIF --> <!-- Закрывает условие редактирования -->
                  <!-- IF {FORUMS_POSTS_ROW_DELETE} --> <!-- Условие: если доступно удаление -->
                    <span>{PHP.cfg.separator}</span> <!-- Разделитель -->
                    {FORUMS_POSTS_ROW_DELETE} <!-- Кнопка удаления -->
                  <!-- ENDIF --> <!-- Закрывает условие удаления -->
                  {FORUMS_POSTS_ROW_BOTTOM} <!-- Дополнительный контент внизу -->
                </div> <!-- Закрывает flex-контейнер мета-данных -->
              </div> <!-- Закрывает колонку мета-информации -->
            </div> <!-- Закрывает сетку заголовка -->
          </div> <!-- Закрывает заголовок карточки -->
          <div class="card-body {FORUMS_POSTS_ROW_ODDEVEN}"> <!-- Тело карточки с классом чётности (odd/even) -->
            <!-- Посты --> 
            <div class="row align-items-start py-3"> <!-- Сетка для поста с выравниванием сверху и отступами -->
              <!-- Автор -->
              <div class="col-md-3 col-12 mb-3 mb-md-0"> <!-- Колонка автора, 3/12 на средних экранах -->
                {FORUMS_POSTS_ROW_ANCHORLINK} <!-- Якорная ссылка на пост -->
                <div class="d-inline-flex align-items-center"> <!-- Flex-контейнер для аватара и информации -->
                  <div class="my-2"> <!-- Контейнер для аватара с отступами -->
                    <!-- IF {PHP|cot_plugin_active('userimages')} --> <!-- Условие: активен плагин 'userimages' -->
                      <!-- IF {FORUMS_POSTS_ROW_USER_AVATAR_SRC} --> <!-- Условие: есть аватар пользователя -->
                        <img src="{FORUMS_POSTS_ROW_USER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50"> <!-- Аватар пользователя -->
                      <!-- ELSE --> <!-- Условие: аватара нет -->
                        <img src="{PHP.R.userimg_default_avatar}" alt="{FORUMS_POSTS_ROW_USER_NICKNAME}" class="rounded-circle" width="50" height="50"> <!-- Дефолтный аватар -->
                      <!-- ENDIF --> <!-- Закрывает условие аватара -->
                    <!-- ENDIF --> <!-- Закрывает условие плагина 'userimages' -->
                    <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} --> <!-- Условие: активен модуль 'files', но не 'userimages' -->
                      <!-- IF {FORUMS_POSTS_ROW_USER_AVATAR_ID} > 0 --> <!-- Условие: есть ID аватара -->
                        <img src="{FORUMS_POSTS_ROW_USER_AVATAR_URL}" alt="{FORUMS_POSTS_ROW_USER_NICKNAME}" class="rounded-circle" width="75" height="75"> <!-- Аватар из модуля 'files' -->
                      <!-- ELSE --> <!-- Условие: ID аватара нет -->
                        <img src="{PHP.R.userimg_default_avatar}" alt="{FORUMS_POSTS_ROW_USER_NICKNAME}" class="rounded-circle" width="75" height="75"> <!-- Дефолтный аватар -->
                      <!-- ENDIF --> <!-- Закрывает условие ID аватара -->
                    <!-- ENDIF --> <!-- Закрывает условие модуля 'files' -->
                  </div> <!-- Закрывает контейнер аватара -->
                  <div> <!-- Контейнер для имени и группы -->
                    <h4 class="h6 mt-2 mb-2 ms-2">{FORUMS_POSTS_ROW_USER_NAME}</h4> <!-- Имя пользователя размером h6 -->
                    <p class="small ms-2">{FORUMS_POSTS_ROW_USER_MAIN_GROUP_TITLE}</p> <!-- Название основной группы пользователя -->
                  </div> <!-- Закрывает контейнер имени и группы -->
                </div> <!-- Закрывает flex-контейнер аватара и информации -->
                <!-- IF {PHP|cot_plugin_active('whosonline')} --> <!-- Условие: активен плагин 'whosonline' -->
                  <!-- IF {FORUMS_POSTS_ROW_USER_ONLINE} --> <!-- Условие: пользователь онлайн -->
                    <p class="mb-3"> <!-- Параграф с отступом -->
                      <span class="badge text-bg-success">{PHP.L.Online}</span> <!-- Бейдж "Онлайн" зелёного цвета -->
                    </p> <!-- Закрывает параграф -->
                  <!-- ELSE --> <!-- Условие: пользователь оффлайн -->
                    <p class="mb-3"> <!-- Параграф с отступом -->
                      <span class="badge text-bg-secondary">{PHP.L.Offline}</span> <!-- Бейдж "Оффлайн" серого цвета -->
                    </p> <!-- Закрывает параграф -->
                  <!-- ENDIF --> <!-- Закрывает условие онлайн-статуса -->
                <!-- ENDIF --> <!-- Закрывает условие плагина 'whosonline' -->
                <p class="small">{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USER_POSTCOUNT}</p> <!-- Количество постов пользователя -->
              </div> <!-- Закрывает колонку автора -->

              <!-- Сообщение -->
              <div class="col-md-9 col-12"> <!-- Колонка сообщения, 9/12 на средних экранах -->
                <div>{FORUMS_POSTS_ROW_TEXT}</div> <!-- Текст поста -->
                <!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} --> <!-- Условие: пост обновлён -->
                  <div class="text-muted fst-italic mt-2 small">{FORUMS_POSTS_ROW_UPDATEDBY}</div> <!-- Информация об обновлении -->
                <!-- ENDIF --> <!-- Закрывает условие обновления -->
                <div class="small text-muted mt-2">{FORUMS_POSTS_ROW_USER_TEXT}</div> <!-- Подпись пользователя -->
                <!-- IF {PHP|cot_module_active('files')} --> <!-- Условие: активен модуль 'files' -->
                  <!-- IF {PHP.usr.id} === {FORUMS_POSTS_ROW_POSTERID} --> <!-- Условие: текущий пользователь — автор поста -->
                    <!-- IF {PHP|cot_auth('files', 'a', 'W')} --> <!-- Условие: есть права на загрузку файлов -->
                      <div class="mb-3"> <!-- Контейнер для виджета файлов с отступом -->
                        {FORUMS_POSTS_ROW_ID|cot_filesWidget('forums', $this, '', 'files.link')} <!-- Виджет загрузки файлов -->
                      </div> <!-- Закрывает контейнер виджета -->
                    <!-- ENDIF --> <!-- Закрывает условие прав -->
                  <!-- ENDIF --> <!-- Закрывает условие авторства -->
                  <!-- IF {FORUMS_POSTS_ROW_ID|cot_filesCount('forums',$this,'','files')} > 0 --> <!-- Условие: есть файлы -->
                    <div class="mt-3"> <!-- Контейнер для файлов с отступом -->
                      <h3 class="h6">{PHP.L.files_downloads}</h3> <!-- Заголовок "Скачивания" -->
                      {FORUMS_POSTS_ROW_ID|cot_filesDisplay('forums', $this)} <!-- Отображение файлов -->
                    </div> <!-- Закрывает контейнер файлов -->
                  <!-- ENDIF --> <!-- Закрывает условие файлов -->
                  <!-- IF {FORUMS_POSTS_ROW_ID|cot_filesCount('forums', $this, '', 'images')} > 0 --> <!-- Условие: есть изображения -->
                    <div class="mt-3"> <!-- Контейнер для изображений с отступом -->
                      <h3 class="h6">{PHP.L.Image}</h3> <!-- Заголовок "Изображения" -->
                      {FORUMS_POSTS_ROW_ID|cot_filesGallery('forums', $this)} <!-- Галерея изображений -->
                    </div> <!-- Закрывает контейнер изображений -->
                  <!-- ENDIF --> <!-- Закрывает условие изображений -->
                <!-- ENDIF --> <!-- Закрывает условие модуля 'files' -->
              </div> <!-- Закрывает колонку сообщения -->
            </div> <!-- Закрывает сетку поста -->
          </div> <!-- Закрывает тело карточки -->
        </div> <!-- Закрывает карточку поста -->
      <!-- END: FORUMS_POSTS_ROW --> <!-- Закрывает цикл постов -->

      <!-- Пагинация -->
      <!-- IF {PAGINATION} --> <!-- Условие: есть пагинация -->
        <nav aria-label="Pagination" class="mt-4"> <!-- Навигация пагинации с отступом -->
          <ul class="pagination justify-content-center"> <!-- Список пагинации с центрированием -->
            {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE} <!-- Ссылки на предыдущую страницу, пагинацию и следующую -->
          </ul> <!-- Закрывает список пагинации -->
        </nav> <!-- Закрывает навигацию пагинации -->
      <!-- ENDIF --> <!-- Закрывает условие пагинации -->

      <!-- Тема закрыта -->
      <!-- BEGIN: FORUMS_POSTS_TOPICLOCKED --> <!-- Открывает блок закрытой темы -->
        <div class="alert alert-warning mt-3">{FORUMS_POSTS_TOPICLOCKED_BODY}</div> <!-- Предупреждение о закрытой теме -->
      <!-- END: FORUMS_POSTS_TOPICLOCKED --> <!-- Закрывает блок закрытой темы -->

      <!-- Антибамп -->
      <!-- BEGIN: FORUMS_POSTS_ANTIBUMP --> <!-- Открывает блок антибампа -->
        <div class="alert alert-info mt-3">{FORUMS_POSTS_ANTIBUMP_BODY}</div> <!-- Информация об антибампе -->
      <!-- END: FORUMS_POSTS_ANTIBUMP --> <!-- Закрывает блок антибампа -->

      <!-- Новый пост -->
      <!-- BEGIN: FORUMS_POSTS_NEWPOST --> <!-- Открывает блок нового поста -->
        <div class="card mt-4"> <!-- Карточка для формы нового поста с отступом -->
          <div class="card-body"> <!-- Тело карточки -->
            <form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost"> <!-- Форма отправки нового поста -->
              <div class="row g-3"> <!-- Сетка Bootstrap с отступами -->
                <div class="col-12"> <!-- Колонка для текста поста, 100% ширины -->
                  {FORUMS_POSTS_NEWPOST_TEXT} <!-- Поле ввода текста поста -->
                  <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен 'pfs', но не 'files' -->
                    <!-- IF {FORUMS_POSTS_NEWPOST_PFS} -->{FORUMS_POSTS_NEWPOST_PFS}<!-- ENDIF --> <!-- Личные файлы пользователя -->
                    <!-- IF {FORUMS_POSTS_NEWPOST_SFS} --><span class="spaced">{PHP.cfg.separator}</span> <!-- Разделитель -->
                      {FORUMS_POSTS_NEWPOST_SFS}<!-- ENDIF --> <!-- Общие файлы сайта -->
                  <!-- ENDIF --> <!-- Закрывает условие 'pfs' -->
                  <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: активен 'files', но не 'pfs' -->
                    {FORUMS_POSTS_NEWPOST_PFS} {FORUMS_POSTS_NEWPOST_SFS} <!-- Файлы для 'files' -->
                  <!-- ENDIF --> <!-- Закрывает условие 'files' -->
                  <!-- IF {PHP.cfg.forums.edittimeout} != 0 --> <!-- Условие: есть таймаут редактирования -->
                    <p class="small text-muted mt-3">{PHP.L.forums_edittimeoutnote} {FORUMS_POSTS_NEWPOST_EDITTIMEOUT}</p> <!-- Примечание о таймауте -->
                  <!-- ENDIF --> <!-- Закрывает условие таймаута -->
                </div> <!-- Закрывает колонку текста -->
                <div class="col-12"> <!-- Колонка для кнопки, 100% ширины -->
                  <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Flex-контейнер для кнопки с выравниванием вправо на md -->
                    <button type="submit" class="btn btn-primary">{PHP.L.Reply}</button> <!-- Кнопка "Ответить" -->
                  </div> <!-- Закрывает flex-контейнер кнопки -->
                </div> <!-- Закрывает колонку кнопки -->
              </div> <!-- Закрывает сетку формы -->
            </form> <!-- Закрывает форму нового поста -->
          </div> <!-- Закрывает тело карточки -->
        </div> <!-- Закрывает карточку нового поста -->
      <!-- END: FORUMS_POSTS_NEWPOST --> <!-- Закрывает блок нового поста -->
    </div> <!-- Закрывает основной контейнер -->
  </div> <!-- Закрывает главный контейнер -->

<!-- Модальное окно для видео -->
<div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true"> <!-- Модалка Bootstrap с уникальным ID и ARIA-метками -->
  <div class="modal-dialog modal-fullscreen-sm-down modal-lg"> <!-- Диалог: полноэкранный на малых экранах, увеличенный (lg) на больших -->
    <div class="modal-content"> <!-- Контент модалки -->
      <div class="modal-body p-0"> <!-- Тело модалки без отступов для видео -->
        <div class="ratio ratio-16x9"> <!-- Контейнер с соотношением сторон 16:9 -->
          <iframe 
            src="https://www.youtube.com/embed/{FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE}?enablejsapi=1&autoplay=1&controls=1&fs=1&rel=0" 
            type="text/html" 
            id="staticPlayer" 
            allowfullscreen 
            allow="autoplay; fullscreen" 
            frameborder="0">
          </iframe> <!-- Iframe с видео YouTube, полный набор параметров -->
        </div> <!-- Закрывает контейнер видео -->
      </div> <!-- Закрывает тело модалки -->
      <div class="modal-footer"> <!-- Подвал модалки -->
        <h5 class="modal-title" id="videoModalLabel">{FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE_TITLE}</h5> <!-- Заголовок модалки с названием видео -->
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> <!-- Кнопка закрытия модалки -->
      </div> <!-- Закрывает подвал модалки -->
    </div> <!-- Закрывает контент модалки -->
  </div> <!-- Закрывает диалог модалки -->
</div> <!-- Закрывает модальное окно -->

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие подключения просмотра mskin (если он есть) для админов -->
<!-- Подключение mskin.tpl для группы администраторов -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"} <!-- Подключение дополнительного шаблона -->
<!-- ENDIF --> <!-- Конец условия подключения просмотра mskin для админов -->


<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->
