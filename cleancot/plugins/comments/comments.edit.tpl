<!-- 
/********************************************************************************
 * File: comments.edit.tpl (Версия: 2.0.0)
 * Description: This is an HTML template for editing a comment.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 20 April 2025 
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
          <li class="breadcrumb-item"><a href="{BACK_URL}">{PHP.L.Back}</a></li> <!-- Ссылка "Назад" -->
          <li class="breadcrumb-item active" aria-current="page">{TITLE}</li> <!-- Текущая страница (заголовок комментария) -->
        </ol> <!-- Закрывает список хлебных крошек -->
      </nav> <!-- Закрывает навигацию -->
    </div> <!-- Закрывает внутренний контейнер -->
  </div> <!-- Закрывает панель хлебных крошек -->

    <div class="container-md d-flex flex-column justify-content-center"> <!-- Контейнер средней ширины с flex-выравниванием по центру -->
      <div class="row"> <!-- Сетка Bootstrap для содержимого -->
        <div class="col-12 col-md-10 mx-auto"> <!-- Колонка: 100% ширины на малых экранах, 10/12 с автоцентрированием на средних -->
          <div class="card mt-4 mb-4"> <!-- Карточка с отступами сверху и снизу -->
            <div class="card-header bg-warning text-dark"> <!-- Заголовок карточки с жёлтым фоном и тёмным текстом -->
              <h2 class="h5 mb-0">{PHP.L.Comments_edit} #{COMMENT_FORM_ID}</h2> <!-- Заголовок "Редактировать комментарий" с ID -->
            </div> <!-- Закрывает заголовок карточки -->
            <div class="card-body"> <!-- Тело карточки -->
              {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает шаблон предупреждений из темы -->
              <form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form" class="needs-validation" novalidate> <!-- Форма отправки с валидацией -->
                {COMMENT_FORM_PARAMS} <!-- Скрытые параметры формы -->
                <div class="row g-3"> <!-- Сетка Bootstrap с отступами между элементами -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="commentPoster" class="form-label fw-semibold">{PHP.L.Poster}</label> <!-- Метка "Автор" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      <div class="comment-form-poster"> <!-- Flex-контейнер для аватара и имени -->
                        <!-- IF {AUTHOR_DETAILS_URL} --><a href="{AUTHOR_DETAILS_URL}"><!-- ENDIF -->
                          {AUTHOR_AVATAR} <!-- Аватар автора -->
                        <!-- IF {AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
                        <!-- IF {AUTHOR_DETAILS_URL} --><a href="{AUTHOR_DETAILS_URL}"><!-- ENDIF -->
                          {AUTHOR} <!-- Имя автора -->
                        <!-- IF {AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
                        <!-- IF {AUTHOR_ID} == 0 AND {PHP.usr.id} > 0 -->
                          <span>({PHP.L.Guest})</span> <!-- Метка "Гость" -->
                        <!-- ENDIF -->
                      </div>
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку автора -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="commentIp" class="form-label fw-semibold">{PHP.L.Ip}</label> <!-- Метка "IP" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      <input type="text" class="form-control" id="commentIp" value="{COMMENT_IP}" readonly> <!-- Поле IP, только чтение -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку IP -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="commentDate" class="form-label fw-semibold">{PHP.L.Date}</label> <!-- Метка "Дата" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      <input type="text" class="form-control" id="commentDate" value="{COMMENT_DATE}" readonly> <!-- Поле даты, только чтение -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку даты -->

                  <!-- BEGIN: EXTRA_FIELD --> <!-- Блок для дополнительных полей -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="extraField" class="form-label fw-semibold">{COMMENT_FORM_EXTRA_FIELD_TITLE}</label> <!-- Метка дополнительного поля -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {COMMENT_FORM_EXTRA_FIELD} <!-- Поле дополнительного поля -->
                      </div> <!-- Закрывает группу ввода -->
                    </div> <!-- Закрывает колонку дополнительного поля -->
                  <!-- END: EXTRA_FIELD --> <!-- Закрывает блок дополнительных полей -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="commentText" class="form-label fw-semibold">{PHP.L.Text}</label> <!-- Метка "Текст" жирным шрифтом -->
                    {COMMENT_FORM_TEXT} <!-- Поле ввода текста комментария -->
                  </div> <!-- Закрывает колонку текста -->

                  <!-- IF {PHP|cot_module_active('pfs')} OR {PHP|cot_module_active('files')} --> <!-- Условие: активен модуль 'pfs' или 'files' -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="commentFiles" class="form-label fw-semibold">{PHP.L.CleanCot_Files}</label> <!-- Метка "Файлы" жирным шрифтом -->
                      <div class="mt-2"> <!-- Контейнер с отступом сверху -->
                        <!-- IF {COMMENT_FORM_PFS} -->{COMMENT_FORM_PFS}<!-- ENDIF --> <!-- Личные файлы -->
                        <!-- IF {COMMENT_FORM_SFS} --><span class="me-2">{PHP.cfg.separator}</span>{COMMENT_FORM_SFS}<!-- ENDIF --> <!-- Общие файлы с разделителем -->
                      </div> <!-- Закрывает контейнер -->
                    </div> <!-- Закрывает колонку файлов -->
                  <!-- ENDIF --> <!-- Закрывает условие модулей -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Flex-контейнер для кнопок с выравниванием вправо на md -->
                      <button type="submit" class="btn btn-success">{PHP.L.Update}</button> <!-- Кнопка "Обновить" -->
                    </div> <!-- Закрывает flex-контейнер -->
                  </div> <!-- Закрывает колонку кнопок -->
                </div> <!-- Закрывает сетку формы -->
              </form> <!-- Закрывает форму -->
            </div> <!-- Закрывает тело карточки -->
          </div> <!-- Закрывает карточку -->
        </div> <!-- Закрывает колонку -->
      </div> <!-- Закрывает сетку -->
    </div> <!-- Закрывает контейнер -->


  <!-- Подключение mskin.tpl для администраторов -->
  <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие: пользователь — админ и активен mskin -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"} <!-- Подключает дополнительный шаблон для админов -->
  <!-- ENDIF --> <!-- Закрывает условие подключения mskin -->

  <style>
    .comment-form-poster {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .comment-form-poster img.avatar {
      max-height: 60px;
      border-radius: 50%;
    }
  </style>
<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->