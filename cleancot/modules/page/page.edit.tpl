<!-- 
/********************************************************************************
 * File: page.edit.tpl
 * Description: This is an HTML template of a page with an editing form for an existing article or news item.
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
          {PAGEEDIT_BREADCRUMBS} <!-- Выводит хлебные крошки для страницы редактирования статьи -->
        </ol> <!-- Закрывает список хлебных крошек -->
      </nav> <!-- Закрывает навигацию -->
    </div> <!-- Закрывает внутренний контейнер -->
  </div> <!-- Закрывает панель хлебных крошек -->

  <div class=""> <!-- Главный контейнер без дополнительных классов -->
    <div class="container-md d-flex flex-column justify-content-center"> <!-- Контейнер средней ширины с flex-выравниванием по центру -->
      <!-- IF !{PHP.usr_can_publish} --> <!-- Условие: если пользователь не может публиковать -->
        <div class="mb-3 mt-3"> <!-- Контейнер для уведомления с отступами -->
          <div class="alert alert-info" role="alert"> <!-- Информационное уведомление Bootstrap -->
            {PHP.L.page_formhint} <!-- Текст подсказки для формы -->
          </div> <!-- Закрывает уведомление -->
        </div> <!-- Закрывает контейнер уведомления -->
      <!-- ENDIF --> <!-- Закрывает условие публикации -->

      <div class="row"> <!-- Сетка Bootstrap для содержимого -->
        <div class="col-12 col-md-10 mx-auto"> <!-- Колонка: 100% ширины на малых экранах, 10/12 с автоцентрированием на средних -->
          <div class="card mt-4 mb-4"> <!-- Карточка с отступами сверху и снизу -->
            <div class="card-header bg-warning text-dark"> <!-- Заголовок карточки с жёлтым фоном и тёмным текстом -->
              <h2 class="h5 mb-0">{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID}</h2> <!-- Заголовок страницы с ID, размер h5, без нижнего отступа -->
            </div> <!-- Закрывает заголовок карточки -->
            <div class="card-body"> <!-- Тело карточки -->
              {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключает шаблон предупреждений из темы -->
              <form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="needs-validation" novalidate> <!-- Форма отправки с поддержкой файлов и валидацией -->
                <div class="row g-3"> <!-- Сетка Bootstrap с отступами между элементами -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageCat" class="form-label fw-semibold">{PHP.L.Category}</label> <!-- Метка "Категория" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_CAT} <!-- Поле выбора категории -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку категории -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageTitle" class="form-label fw-semibold">{PHP.L.Title}</label> <!-- Метка "Название" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_TITLE} <!-- Поле ввода названия -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку названия -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageDesc" class="form-label fw-semibold">{PHP.L.Description}</label> <!-- Метка "Описание" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_DESCRIPTION} <!-- Поле ввода описания -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку описания -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageAuthor" class="form-label fw-semibold">{PHP.L.Author}</label> <!-- Метка "Автор" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_AUTHOR} <!-- Поле ввода автора -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку автора -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageDate" class="form-label fw-semibold">{PHP.L.Date}</label> <!-- Метка "Дата" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_DATE} <!-- Поле ввода даты -->
                    </div> <!-- Закрывает группу ввода -->
                    <small class="form-text text-muted mt-1">{PAGEEDIT_FORM_DATENOW} {PHP.L.page_date_now}</small> <!-- Чекбокс и текст "Сейчас" мелким шрифтом -->
                  </div> <!-- Закрывает колонку даты -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageBegin" class="form-label fw-semibold">{PHP.L.Begin}</label> <!-- Метка "Дата начала" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_BEGIN} <!-- Поле ввода даты начала -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку даты начала -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageExpire" class="form-label fw-semibold">{PHP.L.Expire}</label> <!-- Метка "Дата окончания" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_EXPIRE} <!-- Поле ввода даты окончания -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку даты окончания -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageStatus" class="form-label fw-semibold">{PHP.L.Status}</label> <!-- Метка "Статус" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_LOCAL_STATUS} <!-- Поле выбора статуса -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку статуса -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageAlias" class="form-label fw-semibold">{PHP.L.Alias}</label> <!-- Метка "Алиас" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_ALIAS} <!-- Поле ввода алиаса -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку алиаса -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageKeywords" class="form-label fw-semibold">{PHP.L.page_metakeywords}</label> <!-- Метка "Мета-ключевые слова" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_KEYWORDS} <!-- Поле ввода ключевых слов -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку ключевых слов -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageMetaTitle" class="form-label fw-semibold">{PHP.L.page_metatitle}</label> <!-- Метка "Мета-заголовок" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_METATITLE} <!-- Поле ввода мета-заголовка -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку мета-заголовка -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageMetaDesc" class="form-label fw-semibold">{PHP.L.page_metadesc}</label> <!-- Метка "Мета-описание" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_METADESC} <!-- Поле ввода мета-описания -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку мета-описания -->

                  <!-- BEGIN: TAGS --> <!-- Открывает блок тегов -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageTags" class="form-label fw-semibold">{PAGEEDIT_TOP_TAGS}</label> <!-- Метка "Теги" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_TAGS} <!-- Поле ввода тегов -->
                      </div> <!-- Закрывает группу ввода -->
                      <small class="form-text text-muted">{PAGEEDIT_TOP_TAGS_HINT}</small> <!-- Подсказка для тегов мелким шрифтом -->
                    </div> <!-- Закрывает колонку тегов -->
                  <!-- END: TAGS --> <!-- Закрывает блок тегов -->

                  <!-- BEGIN: ADMIN --> <!-- Открывает блок для администраторов -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageOwner" class="form-label fw-semibold">{PHP.L.Owner}</label> <!-- Метка "Владелец" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_OWNER_ID} <!-- Поле ввода ID владельца -->
                      </div> <!-- Закрывает группу ввода -->
                    </div> <!-- Закрывает колонку владельца -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageHits" class="form-label fw-semibold">{PHP.L.Hits}</label> <!-- Метка "Просмотры" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_HITS} <!-- Поле ввода количества просмотров -->
                      </div> <!-- Закрывает группу ввода -->
                    </div> <!-- Закрывает колонку просмотров -->
                  <!-- END: ADMIN --> <!-- Закрывает блок для администраторов -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageParser" class="form-label fw-semibold">{PHP.L.Parser}</label> <!-- Метка "Парсер" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_PARSER} <!-- Поле выбора парсера -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку парсера -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageText" class="form-label fw-semibold">{PHP.L.Text}</label> <!-- Метка "Текст" жирным шрифтом -->
                    {PAGEEDIT_FORM_TEXT} <!-- Поле ввода текста статьи -->
                  </div> <!-- Закрывает колонку текста -->

                  <!-- IF {PAGEEDIT_FORM_LINK_MAIN_IMAGE} --> <!-- Условие: если доступно поле "Ссылка на главное изображение" -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageLinkMainImage" class="form-label fw-semibold">{PAGEEDIT_FORM_LINK_MAIN_IMAGE_TITLE}</label> <!-- Метка для поля изображения жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_LINK_MAIN_IMAGE} <!-- Поле ввода ссылки на изображение -->
                      </div> <!-- Закрывает группу ввода -->
                      <small class="form-text text-muted">{PHP.L.CleanCot_page_LinkMainImage_hint}</small> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает колонку изображения -->
                  <!-- ENDIF --> <!-- Закрывает условие изображения -->

                  <!-- IF {PHP|cot_module_active('pfs')} --> <!-- Условие: активен модуль 'pfs' -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageText" class="form-label fw-semibold">{PHP.L.CleanCot_PFS}</label> <!-- Метка "PFS" жирным шрифтом -->
                      <div class="mt-2"> <!-- Контейнер с отступом сверху -->
                        <!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF --> <!-- Личные файлы -->
                        <!-- IF {PAGEEDIT_FORM_SFS} --><span class="me-2">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF --> <!-- Общие файлы с разделителем -->
                      </div> <!-- Закрывает контейнер -->
                    </div> <!-- Закрывает колонку PFS -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageFile" class="form-label fw-semibold">{PHP.L.page_file}</label> <!-- Метка "Файл" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_FILE} <!-- Поле ввода файла -->
                      </div> <!-- Закрывает группу ввода -->
                      <small class="form-text text-muted">{PHP.themelang.pageadd.Filehint}</small> <!-- Подсказка мелким шрифтом из языковых файлов -->
                    </div> <!-- Закрывает колонку файла -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageUrl" class="form-label fw-semibold">{PHP.L.URL}</label> <!-- Метка "URL" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_URL} <!-- Поле ввода URL -->
                      </div> <!-- Закрывает группу ввода -->
                      <div class="mt-2"> <!-- Контейнер с отступом сверху -->
                        {PAGEEDIT_FORM_URL_PFS}   {PAGEEDIT_FORM_URL_SFS} <!-- Ссылки PFS и SFS -->
                      </div> <!-- Закрывает контейнер -->
                      <small class="form-text text-muted">{PHP.L.page_urlhint}</small> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает колонку URL -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageSize" class="form-label fw-semibold">{PHP.L.page_filesize}</label> <!-- Метка "Размер файла" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_SIZE} <!-- Поле ввода размера файла -->
                      </div> <!-- Закрывает группу ввода -->
                      <small class="form-text text-muted">{PHP.L.page_filesizehint}</small> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает колонку размера -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageDownloads" class="form-label fw-semibold">{PHP.L.page_filehitcount}</label> <!-- Метка "Скачивания" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_FILE_DOWNLOADS} <!-- Поле ввода количества скачиваний -->
                      </div> <!-- Закрывает группу ввода -->
                      <small class="form-text text-muted">{PHP.L.page_filehitcounthint}</small> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает колонку скачиваний -->
                  <!-- ELSE --> <!-- Альтернатива: 'pfs' не активен -->
                    <!-- IF {PHP.usr.isadmin} AND !{PHP|cot_module_active('files')} --> <!-- Условие: пользователь — админ и 'files' не активен -->
                      <div class="col-12"> <!-- Колонка полной ширины -->
                        <div class="mb-3 mt-3"> <!-- Контейнер с отступами -->
                          <div class="alert alert-info" role="alert"> <!-- Информационное уведомление -->
                            {PHP.L.CleanCot_not_installed_PFS} <!-- Текст о неустановленном PFS -->
                          </div> <!-- Закрывает уведомление -->
                        </div> <!-- Закрывает контейнер -->
                      </div> <!-- Закрывает колонку -->
                    <!-- ENDIF --> <!-- Закрывает условие админа -->
                  <!-- ENDIF --> <!-- Закрывает условие 'pfs' -->

                  <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: активен 'files', но не 'pfs' -->
                    <div class="card shadow-sm rounded-3 mb-4 bg-body"> <!-- Карточка для прикрепления файлов -->
                      <div class="card-body p-3"> <!-- Тело карточки с отступами -->
                        <h4 class="border-bottom text-primary pb-2 mb-0">Прикрепление файлов "на-лету"</h4> <!-- Заголовок с синей границей -->
                        <div class="mt-3"> <!-- Контейнер с отступом сверху -->
                          {PAGEEDIT_FORM_ID|cot_filesFileBox('page', $this)} <!-- Виджет прикрепления файлов с ID страницы -->
                        </div> <!-- Закрывает контейнер -->
                      </div> <!-- Закрывает тело карточки -->
                    </div> <!-- Закрывает карточку -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageText" class="form-label fw-semibold">{PHP.L.CleanCot_Files}</label> <!-- Метка "Файлы" жирным шрифтом -->
                      <div class="mt-2"> <!-- Контейнер с отступом сверху -->
                        <!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF --> <!-- Личные файлы -->
                        <!-- IF {PAGEEDIT_FORM_SFS} --><span class="me-2">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF --> <!-- Общие файлы с разделителем -->
                      </div> <!-- Закрывает контейнер -->
                    </div> <!-- Закрывает колонку файлов -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageFile" class="form-label fw-semibold">{PHP.L.page_file}</label> <!-- Метка "Файл" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_FILE} <!-- Поле ввода файла -->
                      </div> <!-- Закрывает группу ввода -->
                      <small class="form-text text-muted">{PHP.L.page_filehint}</small> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает колонку файла -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageUrl" class="form-label fw-semibold">{PHP.L.URL}</label> <!-- Метка "URL" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_URL} <!-- Поле ввода URL -->
                      </div> <!-- Закрывает группу ввода -->
                      <div class="mt-2"> <!-- Контейнер с отступом сверху -->
                        {PAGEEDIT_FORM_URL_PFS}   {PAGEEDIT_FORM_URL_SFS} <!-- Ссылки PFS и SFS -->
                      </div> <!-- Закрывает контейнер -->
                      <small class="form-text text-muted">{PHP.L.page_urlhint}</small> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает колонку URL -->
                    <div class="col-12"> <!-- Колонка полной ширины -->
                      <label for="pageSize" class="form-label fw-semibold">{PHP.L.Filesize}</label> <!-- Метка "Размер файла" жирным шрифтом -->
                      <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                        {PAGEEDIT_FORM_SIZE} <!-- Поле ввода размера файла -->
                      </div> <!-- Закрывает группу ввода -->
                      <small class="form-text text-muted">{PHP.L.page_filesizehint}</small> <!-- Подсказка мелким шрифтом -->
                    </div> <!-- Закрывает колонку размера -->
                  <!-- ELSE --> <!-- Альтернатива: 'files' не активен -->
                    <!-- IF {PHP.usr.isadmin} AND !{PHP|cot_module_active('pfs')} --> <!-- Условие: пользователь — админ и 'pfs' не активен -->
                      <div class="col-12"> <!-- Колонка полной ширины -->
                        <div class="mb-3 mt-3"> <!-- Контейнер с отступами -->
                          <div class="alert alert-primary" role="alert"> <!-- Информационное уведомление синего цвета -->
                            {PHP.L.CleanCot_not_installed_Files} <!-- Текст о неустановленных 'Files' -->
                          </div> <!-- Закрывает уведомление -->
                        </div> <!-- Закрывает контейнер -->
                      </div> <!-- Закрывает колонку -->
                    <!-- ENDIF --> <!-- Закрывает условие админа -->
                  <!-- ENDIF --> <!-- Закрывает условие 'files' -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <label for="pageDelete" class="form-label fw-semibold">{PHP.L.page_deletepage}</label> <!-- Метка "Удалить страницу" жирным шрифтом -->
                    <div class="input-group has-validation"> <!-- Группа ввода с поддержкой валидации -->
                      {PAGEEDIT_FORM_DELETE} <!-- Чекбокс удаления страницы -->
                    </div> <!-- Закрывает группу ввода -->
                  </div> <!-- Закрывает колонку удаления -->

                  <div class="col-12"> <!-- Колонка полной ширины -->
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Flex-контейнер для кнопок с выравниванием вправо на md -->
                      <!-- IF {PHP.usr_can_publish} --> <!-- Условие: если пользователь может публиковать -->
                        <button type="submit" name="rpagestate" value="0" class="btn btn-success">{PHP.L.Publish}</button> <!-- Кнопка "Опубликовать" -->
                      <!-- ENDIF --> <!-- Закрывает условие публикации -->
                      <button type="submit" name="rpagestate" value="2" class="btn btn-secondary">{PHP.L.Saveasdraft}</button> <!-- Кнопка "Сохранить как черновик" -->
                      <button type="submit" name="rpagestate" value="1" class="btn btn-warning">{PHP.L.Submitforapproval}</button> <!-- Кнопка "Отправить на утверждение" -->
                    </div> <!-- Закрывает flex-контейнер -->
                  </div> <!-- Закрывает колонку кнопок -->
                </div> <!-- Закрывает сетку формы -->
              </form> <!-- Закрывает форму -->
            </div> <!-- Закрывает тело карточки -->
          </div> <!-- Закрывает карточку -->
        </div> <!-- Закрывает колонку -->
      </div> <!-- Закрывает сетку -->
    </div> <!-- Закрывает контейнер -->
  </div> <!-- Закрывает главный контейнер -->

  <!-- This is the name of the template for informing the administrator -->
  <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие: пользователь — админ и активен mskin -->
    <!-- Подключение mskin.tpl для группы администраторов -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"} <!-- Подключает дополнительный шаблон для админов -->
  <!-- ENDIF --> <!-- Закрывает условие подключения mskin -->
<!-- END: MAIN --> <!-- Закрывает основной блок шаблона -->