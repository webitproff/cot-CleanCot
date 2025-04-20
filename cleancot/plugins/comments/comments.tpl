<!-- 
/********************************************************************************
 * File: comments.tpl (Версия: 2.0.0)
 * Extension: plugin 'comments'
 * Description: HTML template for displaying and editing comments in a clean and responsive design.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 20 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo: https://cleancot.previewit.work 
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->

<!-- BEGIN: MAIN --> <!-- Основной блок шаблона, обрабатываемый Cotonti -->
<div class="row"> <!-- Bootstrap-строка для сетки -->
  <div class="col-12 col-md-12 mx-auto"> <!-- Колонка: 100% ширины на малых экранах, 12/12 с автоцентрированием на средних -->

    <!-- Заголовок секции комментариев -->
    <h2 class="h5 mb-4">{PHP.L.comments_comments} ({TOTAL_ENTRIES})</h2> <!-- {PHP.L.comments_comments}: языковая строка "Комментарии"; {TOTAL_ENTRIES}: общее количество комментариев -->

    <!-- Подключение шаблона предупреждений -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Включает шаблон warnings.tpl из текущей темы для отображения системных сообщений -->

    <!-- Условие: проверка, не используется ли AJAX для загрузки комментариев -->
    <!-- IF !{COMMENTS_IS_AJAX} -->
      <!-- Условие: если комментарии скрыты (COMMENTS_DISPLAY = 'none') -->
      <!-- IF {COMMENTS_DISPLAY} === 'none' -->
      <div class="mb-3"> <!-- Пользовательский класс для выравнивания вправо и нижнего отступа -->
        <a href="#" onclick="toggleblock('comments'); return false" style="display: inline-flex; align-items: center; gap: 5px"> <!-- Ссылка для переключения видимости блока комментариев -->
          {PHP.R.icon_comments} <!-- Иконка комментариев, определённая в ресурсах темы -->
          {PHP.L.comments_comments}: {TOTAL_ENTRIES} <!-- Текст "Комментарии" и количество -->
        </a>
      </div>
      <!-- ENDIF -->
      <div id="comments" class="comments-container" {COMMENTS_CONTAINER_PARAMS} <!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display:none;"<!-- ENDIF -->> <!-- Контейнер комментариев; {COMMENTS_CONTAINER_PARAMS}: дополнительные HTML-атрибуты -->
    <!-- ENDIF -->

    <div id="comments-block" class="block comments-block" {COMMENTS_BLOCK_PARAMS}> <!-- Блок комментариев; {COMMENTS_BLOCK_PARAMS}: дополнительные HTML-атрибуты -->
      <!-- BEGIN: COMMENTS_ROW --> <!-- Цикл для вывода каждого комментария -->
      <div id="com{COMMENTS_ROW_ID}" class="comment-row mb-3"> <!-- Уникальный ID комментария; класс для стилизации -->
        <div class="row g-3"> <!-- Bootstrap-сетка с отступами -->
          <div class="col-12 col-md-3 comments1"> <!-- Колонка для аватара и мета-информации -->
            <p>{COMMENTS_ROW_AUTHOR_AVATAR}</p> <!-- Аватар автора комментария -->
            <p>
              <a href="{COMMENTS_ROW_URL}">{COMMENTS_ROW_ORDER}.</a> <!-- Ссылка на комментарий с его порядковым номером -->
              <!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --><a href="{COMMENTS_ROW_AUTHOR_DETAILS_URL}"><!-- ENDIF --> <!-- Условие: если есть URL профиля автора -->
                {COMMENTS_ROW_AUTHOR_FULL_NAME} <!-- Полное имя автора -->
              <!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
            </p>
            <p>{COMMENTS_ROW_DATE}</p> <!-- Дата публикации комментария -->
          </div>
          <div class="col-12 col-md-9 comments2"> <!-- Колонка для текста комментария -->
            {COMMENTS_ROW_TEXT} <!-- Текст комментария -->
            <!-- IF {COMMENTS_ROW_DELETE} OR {COMMENTS_ROW_EDIT} --> <!-- Условие: доступны действия удаления или редактирования -->
            <div class="margintop10 text-end"> <!-- Пользовательский класс для верхнего отступа; Bootstrap-класс для выравнивания вправо -->
              <!-- IF {COMMENTS_ROW_AUTHOR_IP} -->{PHP.L.Ip}: {COMMENTS_ROW_AUTHOR_IP}<!-- ENDIF --> <!-- IP автора, если доступно -->
              {COMMENTS_ROW_EDIT} {COMMENTS_ROW_DELETE} <!-- Ссылки для редактирования и удаления -->
            </div>
            <!-- ENDIF -->
          </div>
        </div>
        <hr class="clear marginbottom10" /> <!-- Пользовательский разделитель с классами для очистки и отступа -->
      </div>
      <!-- END: COMMENTS_ROW -->

      <!-- IF {PAGINATION} --> <!-- Условие: если есть пагинация -->
      <nav aria-label="Comments navigation" class="paging clear"> <!-- Навигация пагинации; пользовательский класс -->
        <ul class="pagination justify-content-center"> <!-- Bootstrap-список пагинации -->
          {PREVIOUS_PAGE} <!-- Ссылка на предыдущую страницу -->
          {PAGINATION} <!-- Элементы пагинации -->
          {NEXT_PAGE} <!-- Ссылка на следующую страницу -->
        </ul>
        <p class="text-center">
          <span>{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</span> <!-- Информация о количестве комментариев -->
        </p>
      </nav>
      <!-- ENDIF -->

      <!-- IF {TOTAL_ENTRIES} === 0 --> <!-- Условие: если комментариев нет -->
      <div class="alert alert-warning warning">{PHP.L.comments_noYet}</div> <!-- Уведомление об отсутствии комментариев; пользовательский класс -->
      <!-- ENDIF -->

      <!-- BEGIN: NEW_COMMENT --> <!-- Блок формы для нового комментария -->
      <div class="card mb-4"> <!-- Bootstrap-карточка для формы -->
        <div class="card-body"> <!-- Тело карточки -->
          <h2 class="comments h4 mt-4 mb-3">{PHP.L.comments_newComment}</h2> <!-- Заголовок "Новый комментарий"; пользовательский класс -->
          <div class="comments-warnings"> <!-- Пользовательский контейнер для предупреждений -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключение шаблона предупреждений -->
          </div>
          <div class="error comments-error alert alert-danger" style="display: none"> <!-- Блок для ошибок; пользовательский класс -->
            <h4>{PHP.L.Error}</h4> <!-- Заголовок ошибки -->
            <div class="comments-message"></div> <!-- Сообщение об ошибке -->
          </div>
          <div class="done comments-success alert alert-success" style="display: none"> <!-- Блок для успешных сообщений; пользовательский класс -->
            <h4>{PHP.L.Done}</h4> <!-- Заголовок успеха -->
            <div class="comments-message"></div> <!-- Сообщение об успехе -->
          </div>
          <form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form" class="needs-validation" novalidate> <!-- Форма отправки комментария; {COMMENT_FORM_ACTION}: URL для отправки -->
            <div class="row g-3"> <!-- Bootstrap-сетка для полей формы -->
              <!-- BEGIN: GUEST --> <!-- Блок для гостей (неавторизованных пользователей) -->
              <div class="col-12 marginbottom10"> <!-- Колонка с пользовательским отступом -->
                <label for="commentAuthor" class="form-label fw-semibold">{PHP.L.Name}</label> <!-- Метка "Имя" -->
                {COMMENT_FORM_AUTHOR} <!-- Поле ввода имени гостя -->
              </div>
              <!-- END: GUEST -->

              <!-- BEGIN: EXTRA_FIELD --> <!-- Блок для дополнительных полей -->
              <div class="col-12 marginbottom10"> <!-- Колонка с пользовательским отступом -->
                <label for="extraField" class="form-label fw-semibold">{COMMENT_FORM_EXTRA_FIELD_TITLE}</label> <!-- Метка дополнительного поля -->
                {COMMENT_FORM_EXTRA_FIELD} <!-- Поле дополнительного поля -->
              </div>
              <!-- END: EXTRA_FIELD -->

              <div class="col-12"> <!-- Колонка для текста комментария -->
                <label for="commentText" class="form-label fw-semibold">{PHP.L.Text}</label> <!-- Метка "Текст" -->
                {COMMENT_FORM_TEXT} <!-- Поле ввода текста комментария -->
              </div>

              <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: активен модуль 'files', но не 'pfs' -->
              <div class="col-12 marginbottom10"> <!-- Колонка с пользовательским отступом -->
                <label for="commentFiles" class="form-label fw-semibold">{PHP.L.CleanCot_Files}</label> <!-- Метка "Файлы" (для модуля files) -->
                <div class="mt-2"> <!-- Контейнер с отступом -->
                  <!-- IF {COMMENT_FORM_PFS} -->{COMMENT_FORM_PFS}<!-- ENDIF --> <!-- Личные файлы -->
                  <!-- IF {COMMENT_FORM_SFS} --><span class="mx-2">{PHP.cfg.separator}</span>{COMMENT_FORM_SFS}<!-- ENDIF --> <!-- Общие файлы с разделителем -->
                </div>
              </div>
              <!-- ENDIF -->

              <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} --> <!-- Условие: активен модуль 'pfs', но не 'files' -->
              <div class="col-12 marginbottom10"> <!-- Колонка с пользовательским отступом -->
                <label for="commentFiles" class="form-label fw-semibold">{PHP.L.Files}</label> <!-- Метка "Файлы" (для модуля pfs) -->
                <div class="mt-2"> <!-- Контейнер с отступом -->
                  <!-- IF {COMMENT_FORM_PFS} -->{COMMENT_FORM_PFS}<!-- ENDIF --> <!-- Личные файлы -->
                  <!-- IF {COMMENT_FORM_SFS} --><span class="mx-2">{PHP.cfg.separator}</span>{COMMENT_FORM_SFS}<!-- ENDIF --> <!-- Общие файлы с разделителем -->
                </div>
              </div>
              <!-- ENDIF -->

              <!-- IF {PHP.usr.id} == 0 AND {COMMENT_FORM_VERIFY_IMG} --> <!-- Условие: гость и требуется капча -->
              <div class="col-12 marginbottom10"> <!-- Колонка с пользовательским отступом -->
                <label for="commentVerify" class="form-label fw-semibold">{PHP.L.Verification}</label> <!-- Метка "Проверка" -->
                <div class="d-flex align-items-center gap-2"> <!-- Flex-контейнер для капчи -->
                  {COMMENT_FORM_VERIFY_IMG} <!-- Изображение капчи -->
                  <!-- IF {COMMENT_FORM_VERIFY_INPUT} -->{COMMENT_FORM_VERIFY_INPUT}<!-- ENDIF --> <!-- Поле ввода капчи -->
                </div>
              </div>
              <!-- ENDIF -->

              <!-- IF {COMMENT_FORM_HINT} --> <!-- Условие: есть подсказка для формы -->
              <div class="col-12"> <!-- Колонка для подсказки -->
                <small class="form-text text-muted help">{COMMENT_FORM_HINT}</small> <!-- Подсказка формы; пользовательский класс -->
              </div>
              <!-- ENDIF -->

              <div class="col-12 margin10 text-center"> <!-- Колонка для кнопки с пользовательскими отступами и центрированием -->
                <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button> <!-- Кнопка "Отправить" -->
              </div>
            </div>
          </form>
        </div>
      </div>
      <!-- END: NEW_COMMENT -->

      <!-- BEGIN: COMMENTS_CLOSED --> <!-- Блок для закрытых комментариев -->
      <div class="alert alert-danger error">{COMMENTS_CLOSED}</div> <!-- Уведомление о закрытии комментариев; пользовательский класс -->
      <!-- END: COMMENTS_CLOSED -->
    </div>

    <!-- IF !{COMMENTS_IS_AJAX} --> <!-- Закрытие контейнера, если не AJAX -->
    </div>
    <!-- ENDIF -->

  </div>
</div>

<!-- Уведомление для администратора -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: пользователь — администратор (группа ID 5) -->
<div class="container-xl"> <!-- Контейнер для уведомления -->
  <div class="alert alert-warning" role="alert"> <!-- Bootstrap-уведомление -->
    <strong>{PHP.usr.name}</strong>, This is the HTML template <code>comments.tpl</code> <!-- Имя пользователя и название шаблона -->
  </div>
</div>
<!-- ENDIF -->

<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->
