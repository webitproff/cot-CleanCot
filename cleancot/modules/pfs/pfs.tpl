<!-- 
/********************************************************************************
 * File: pfs.tpl
 * Extention: module 'pfs'
 * Description: The `pfs.tpl` template in Cotonti is responsible for displaying the interface of the Personal File Storage (PFS), enabling users to view, upload, and manage their files and folders. It renders lists of files and folders, upload forms, and control elements such as inserting files into content, editing, and deleting.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 02 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN --> <!-- Начало основного блока Cotonti -->

<!-- BEGIN: STANDALONE_HEADER --> <!-- Начало автономного заголовка Cotonti -->
<!DOCTYPE html> <!-- Объявление типа документа HTML5 -->
<html lang="{PHP.cfg.defaultlang}"> <!-- Открытие HTML с языком по умолчанию из Cotonti -->
  <head> <!-- Начало секции head -->
    <title>{PHP.L.pfs_title} - {PHP.cfg.maintitle}</title> <!-- Заголовок страницы из Cotonti -->
    <meta charset="utf-8" /> <!-- Установка кодировки UTF-8 -->
    <meta name="viewport" content="width=device-width, initial-scale=1" /> <!-- Адаптивный viewport -->
    <base href="{PHP.cfg.mainurl}/" /> <!-- Базовый URL из Cotonti -->
    {PFS_HEAD} <!-- Вставка данных PFS из Cotonti -->
    <!-- Вставка данных PFS из Cotonti -->
	<!-- Начало встроенного JavaScript --><!-- Вставка JavaScript из Cotonti. --> 
    <script type="text/javascript"> 
      //<![CDATA[ 
      {PFS_HEADER_JAVASCRIPT} 
      //]]> 
    </script> <!-- Конец встроенного JavaScript -->
    <link href="{PHP.cfg.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" /> <!-- Подключение CSS {PHP.scheme} если он есть -->
  </head> <!-- Конец секции head -->
  <body> <!-- Начало секции body -->
<!-- END: STANDALONE_HEADER --> <!-- Конец автономного заголовка Cotonti -->

<div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер хлебных крошек с фоном и границей -->
  <!-- Хлебные крошки в контейнере -->
  <div class="container-xl py-2"> <!-- Внутренний контейнер с увеличенной шириной и отступами -->
    <nav aria-label="breadcrumb"> <!-- Навигация для хлебных крошек -->
      <!-- Список хлебных крошек с горизонтальной прокруткой -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{PFS_TITLE} {PFS_PATH}</ol> <!-- Список с заголовком и путём PFS из Cotonti -->
    </nav>
  </div>
</div>

<div class="container-xl py-5 min-height-50vh"> <!-- Основной контейнер с увеличенной шириной, отступами и минимальной высотой -->

  <!-- IF {PFS_SUBTITLE} --> <!-- Условие подзаголовка Cotonti -->
  <!-- Условие подзаголовка Cotonti -->
  <p class="small">{PFS_SUBTITLE}</p> <!-- Подзаголовок PFS из Cotonti --><!-- не используется на сегодня. оставил для примера -->
  <!-- Подзаголовок -->
  <!-- ENDIF -->

  <!-- BEGIN: PFS_ERRORS --> <!-- Начало блока ошибок Cotonti -->
  <!-- Начало блока ошибок Cotonti -->
  <div style="py-4 mb-4"> <!-- Контейнер для ошибок с отступами -->
    <div class="alert alert-primary" role="alert"> <!-- Bootstrap-уведомление для ошибок -->
      <ul> <!-- Список ошибок -->
        <!-- BEGIN: PFS_ERRORS_ROW --> <!-- Начало строки ошибок Cotonti -->
        <li>{PFS_ERRORS_ROW_MSG}</li> <!-- Сообщение об ошибке из Cotonti -->
        <!-- END: PFS_ERRORS_ROW --> <!-- Конец строки ошибок Cotonti -->
      </ul>
    </div>
  </div>
  <!-- END: PFS_ERRORS --> <!-- Конец блока ошибок Cotonti -->

  <div style="py-4 mb-4"> <!-- Контейнер для общей информации о размере -->
    <div class="alert alert-info" role="alert"> <!-- Bootstrap-уведомление для информации -->
      <p>{PHP.L.pfs_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL} ({PFS_PERCENTAGE}%)</p> <!-- Общий размер файлов из Cotonti -->
      <div class="bar_back"> <!-- Контейнер прогресс-бара -->
        <div class="bar_front" style="width:{PFS_PERCENTAGE}%;"></div> <!-- Прогресс-бар с шириной в процентах из Cotonti -->
      </div>
      <p>{PHP.L.pfs_maxsize}: {PFS_MAXFILESIZE}</p> <!-- Максимальный размер файла из Cotonti -->
    </div>
  </div>

  <!-- IF {PFS_FOLDER_ID} == 0 AND {PFF_FOLDERCOUNT} > 0 --> <!-- Условие отображения папок Cotonti -->
  <h3 class="h4 mb-4">{PFF_FOLDERCOUNT_TITLE} / {PFF_FILESCOUNT_TITLE} ({PHP.L.pfs_onpage}: {PFF_ONPAGE_FOLDERS_TITLE} / {PFF_ONPAGE_FILES_TITLE})</h3> <!-- Заголовок статистики папок из Cotonti -->
	<!-- Заголовок статистики папок -->
	<div class="list-group list-group-striped list-group-flush"> <!-- Список папок в стиле Bootstrap с полосами и без внутренних границ -->
	  <div class="list-group-item"> <!-- Заголовочная строка списка -->
		<div class="row align-items-center fw-bold"> <!-- Сетка Bootstrap с выравниванием по центру и жирным текстом для заголовков -->
		  <div class="col-12 col-md-1"></div> <!-- Пустая колонка для иконки: 100% на малых, 1/12 на средних+ -->
		  <div class="col-12 col-md-3">{PHP.L.Folder} / {PHP.L.Gallery}</div> <!-- Колонка названия: 100% на малых, 3/12 на средних+ -->
		  <div class="col-12 col-md-2 text-center">{PHP.L.Public}</div> <!-- Колонка статуса публичности: 100% на малых, 2/12 на средних+ -->
		  <div class="col-12 col-md-1 text-center">{PHP.L.Files}</div> <!-- Колонка количества файлов: 100% на малых, 1/12 на средних+ -->
		  <div class="col-12 col-md-1 text-center">{PHP.L.Size}</div> <!-- Колонка размера: 100% на малых, 1/12 на средних+ -->
		  <div class="col-12 col-md-2 text-center">{PHP.L.Updated}</div> <!-- Колонка даты обновления: 100% на малых, 2/12 на средних+ -->
		  <div class="col-12 col-md-2 text-center">{PHP.L.Action}</div> <!-- Колонка действий: 100% на малых, 2/12 на средних+ -->
		</div> <!-- Закрывает сетку заголовков -->
	  </div> <!-- Закрывает заголовочную строку списка -->

	  <!-- BEGIN: PFF_ROW --> <!-- Открывает цикл строк папок Cotonti -->
		<div class="list-group-item"> <!-- Элемент списка для каждой папки -->
		  <div class="row align-items-center"> <!-- Сетка Bootstrap с выравниванием по центру для данных папки -->
			<div class="col-12 col-md-1 text-center"> <!-- Колонка с иконкой: 100% на малых, 1/12 на средних+ -->
			  <a href="{PFF_ROW_URL}">{PFF_ROW_ICON}</a> <!-- Ссылка на папку с иконкой из Cotonti -->
			</div> <!-- Закрывает колонку иконки -->
			<div class="col-12 col-md-3"> <!-- Колонка с названием и описанием: 100% на малых, 3/12 на средних+ -->
			  <p class="fw-bold"> <!-- Жирный текст для названия -->
				<a href="{PFF_ROW_URL}">{PFF_ROW_TITLE}</a> <!-- Ссылка на папку с названием из Cotonti -->
			  </p> <!-- Закрывает абзац названия -->
			  <p class="small">{PFF_ROW_DESC}</p> <!-- Описание папки мелким шрифтом из Cotonti -->
			</div> <!-- Закрывает колонку названия и описания -->
			<div class="col-12 col-md-2 text-center">{PFF_ROW_ISPUBLIC}</div> <!-- Колонка статуса публичности: 100% на малых, 2/12 на средних+ -->
			<div class="col-12 col-md-1 text-center">{PFF_ROW_FCOUNT}</div> <!-- Колонка количества файлов: 100% на малых, 1/12 на средних+ -->
			<div class="col-12 col-md-1 text-center">{PFF_ROW_FSIZE}</div> <!-- Колонка размера: 100% на малых, 1/12 на средних+ -->
			<div class="col-12 col-md-2 text-center">{PFF_ROW_UPDATED}</div> <!-- Колонка даты обновления: 100% на малых, 2/12 на средних+ -->
			<div class="col-12 col-md-2 text-center"> <!-- Колонка действий: 100% на малых, 2/12 на средних+ -->
			  <a href="{PFF_ROW_EDIT_URL}">{PHP.L.Edit}</a> <!-- Ссылка на редактирование из Cotonti -->
			  <a href="{PFF_ROW_DELETE_URL}" class="confirmLink">{PHP.L.Delete}</a> <!-- Ссылка на удаление с классом подтверждения из Cotonti -->
			</div> <!-- Закрывает колонку действий -->
		  </div> <!-- Закрывает сетку данных папки -->
		</div> <!-- Закрывает элемент списка папки -->
	  <!-- END: PFF_ROW --> <!-- Закрывает цикл строк папок Cotonti -->
	</div> <!-- Закрывает список папок -->

  <!-- IF {PFF_PAGINATION} --> <!-- Условие пагинации папок Cotonti -->
  <p class="paging text-center">{PFF_PREVIOUS_PAGE}{PFF_PAGINATION}{PFF_NEXT_PAGE}</p> <!-- Пагинация папок из Cotonti -->
  <!-- Пагинация папок -->
  <!-- ENDIF -->

  <!-- ELSE -->
  <!-- IF {PFS_FOLDER_ID} == 0 --> <!-- Условие отсутствия папок Cotonti -->
  <div class="py-4"> <!-- Контейнер для предупреждения -->
    <div class="alert alert-warning" role="alert"> <!-- Bootstrap-уведомление предупреждения -->
      <p class="text-danger fw-semibold">{PHP.L.CleanCot_PFS_Attention}</p> <!-- Текст предупреждения из Cotonti -->
    </div>
  </div>
  <!-- ENDIF -->
  <!-- ENDIF -->

  <!-- IF {PFS_FILESCOUNT} > 0 --> <!-- Условие отображения файлов Cotonti -->
  <h3>{PFS_INTHISFOLDER}: {PFS_FILESCOUNT_TITLE} ({PHP.L.pfs_onpage}: {PFS_ONPAGE_FILES_TITLE}) {PFS_SHOWTHUMBS}</h3> <!-- Заголовок статистики файлов из Cotonti -->
	<!-- Заголовок статистики файлов -->
	<div class="list-group list-group-striped list-group-flush"> <!-- Список файлов в стиле Bootstrap с полосами и без внутренних границ -->
	  <div class="list-group-item"> <!-- Заголовочная строка списка -->
		<div class="row g-3 align-items-center fw-bold"> <!-- Сетка Bootstrap с выравниванием по центру и жирным текстом для заголовков -->
		  <div class="col-12 col-md-2"></div> <!-- Пустая колонка для иконки: 100% на малых, 1/12 на средних+ -->
		  <div class="col-12 col-md-4">{PHP.L.File}</div> <!-- Колонка названия файла: 100% на малых, 4/12 на средних+ -->
		  <div class="col-12 col-md-1 d-none d-md-block">{PHP.L.Hits}</div> <!-- Колонка просмотров -->
		  <div class="col-12 col-md-1">{PHP.L.Size}</div> <!-- Колонка размера: 100% на малых, 1/12 на средних+ -->
		  <div class="col-12 col-md-2">{PHP.L.Date}</div> <!-- Колонка даты: 100% на малых, 2/12 на средних+ -->
		  <div class="col-12 col-md-2 text-center">{PHP.L.Action}</div> <!-- Колонка действий: 100% на малых, 3/12 на средних+ -->
		</div> <!-- Закрывает сетку заголовков -->
	  </div> <!-- Закрывает заголовочную строку списка -->
		<div class="list-group-item list-striped"> <!-- Элемент списка для каждого файла -->
	  <!-- BEGIN: PFS_ROW --> <!-- Открывает цикл строк файлов Cotonti -->

			<div class="row align-items-center gx-md-3"> <!-- Сетка Bootstrap с выравниванием по центру и увеличенными горизонтальными отступами на md+ -->
			  <div class="col-12 col-md-2"> <!-- Колонка иконки: 100% на малых, 1/12 на средних+ -->
				{PFS_ROW_ICON}<span class="badge bg-info">{PFS_ROW_TYPE}</span> <!-- Иконка и тип файла с бейджем из Cotonti -->
			  </div> <!-- Закрывает колонку иконки -->
			  <div class="col-12 col-md-4"> <!-- Колонка с названием и описанием: 100% на малых, 4/12 на средних+ -->
				<p class="fw-bold"> <!-- Жирный текст для названия -->
				  <a href="{PFS_ROW_FILE_URL}">{PFS_ROW_FILE}</a> <!-- Ссылка на файл с названием из Cotonti -->
				</p> <!-- Закрывает абзац названия -->
				<!-- Тип файла из Cotonti -->
				<!-- IF {PFS_ROW_DESC} --> <!-- Условие: если есть описание -->
				  <p class="small">{PFS_ROW_DESC}</p> <!-- Описание файла мелким шрифтом из Cotonti -->
				<!-- ENDIF --> <!-- Закрывает условие описания -->
			  </div> <!-- Закрывает колонку названия и описания -->
			  <div class="col-12 col-md-1 d-none d-md-block">{PFS_ROW_COUNT}</div> <!-- Колонка просмотров: 100% на малых, 1/12 на средних+, скрыта на малых -->
			  <div class="col-12 col-md-1">{PFS_ROW_SIZE}</div> <!-- Колонка размера: 100% на малых, 1/12 на средних+ -->
			  <div class="col-12 col-md-2">{PFS_ROW_DATE}</div> <!-- Колонка даты: 100% на малых, 2/12 на средних+ -->
			  <div class="col-12 col-md-2 text-center"> <!-- Колонка действий: 100% на малых, 3/12 на средних+ -->
				<a href="{PFS_ROW_DELETE_URL}" class="confirmLink">{PHP.L.Delete}</a> <!-- Ссылка на удаление с классом подтверждения из Cotonti -->
				<a href="{PFS_ROW_EDIT_URL}">{PHP.L.Edit}</a> <!-- Ссылка на редактирование из Cotonti -->
				<div class="m-2">
				{PFS_ROW_INSERT} </div><!-- Вставка файла из Cotonti -->
				<!-- IF {PFS_ROW_INSERT} --> <!-- Условие: если есть возможность вставки -->
				  <!-- Ссылка -->
				  <a class="btn" data-bs-toggle="modal" data-bs-target="#pfs_info_paste" role="button" aria-expanded="false" aria-controls="pfs_info_paste"> <!-- Кнопка для открытия модального окна -->
					<i class="fa-solid fa-circle-question fa-xl"></i> <!-- Иконка вопроса из Font Awesome -->
				  </a> <!-- Закрывает кнопку модального окна -->
				<!-- ENDIF --> <!-- Закрывает условие вставки -->
			  </div> <!-- Закрывает колонку действий -->
			</div> <!-- Закрывает сетку данных файла -->

	  <!-- END: PFS_ROW --> <!-- Закрывает цикл строк файлов Cotonti -->
	  		</div> <!-- Закрывает элемент списка файла -->
	</div> <!-- Закрывает список файлов -->
  <!-- IF {PAGINATION} --> <!-- Условие пагинации файлов Cotonti -->
  <p class="paging text-center">{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}</p> <!-- Пагинация файлов из Cotonti -->
  <!-- Пагинация файлов -->
  <!-- ENDIF -->
  <!-- ENDIF -->

  <div class="row g-4 py-4"> <!-- Сетка кнопок с отступами -->
    <!-- IF {PFS_FOLDER_ID} > 0 --> <!-- Условие кнопки загрузки Cotonti -->
    <div class="col-12 col-md-4" data-bs-toggle="tooltip" data-bs-title="{PHP.L.CleanCot_PFS_Upl_Btn}"> <!-- Колонка для кнопки загрузки -->
      <a class="btn btn-success w-100" data-bs-toggle="collapse" href="#pfs_newfile" role="button" aria-expanded="false" aria-controls="pfs_newfile">{PHP.L.pfs_newfile}</a> <!-- Кнопка новой загрузки из Cotonti -->
    </div>
    <!-- ENDIF -->
    <div class="col-12 col-md-4"> <!-- Колонка для кнопки новой папки -->
      <button type="button" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#pfs_newfolder">{PHP.L.pfs_newfolder}</button> <!-- Кнопка новой папки из Cotonti -->
    </div>
    <div class="col-12 col-md-4"> <!-- Колонка для кнопки расширений -->
      <button type="button" class="btn btn-secondary w-100" data-bs-toggle="modal" data-bs-target="#pfs_extallowed">{PHP.L.pfs_extallowed}</button> <!-- Кнопка разрешённых расширений из Cotonti -->
    </div>
  </div>

  <!-- BEGIN: PFS_UPLOAD_FORM --> <!-- Начало формы загрузки Cotonti -->
  <div class="collapse" id="pfs_newfile"> <!-- Сворачиваемый блок загрузки -->
    <h3>{PHP.L.pfs_newfile}</h3> <!-- Заголовок формы загрузки из Cotonti -->
    <form enctype="multipart/form-data" action="{PFS_UPLOAD_FORM_ACTION}" method="post"> <!-- Форма загрузки с действием из Cotonti -->
      <input type="hidden" name="MAX_FILE_SIZE" value="{PFS_UPLOAD_FORM_MAX_SIZE}" /> <!-- Скрытое поле максимального размера из Cotonti -->
      <div class="list-group list-group-flush"> <!-- Список элементов формы -->
        <!-- BEGIN: PFS_UPLOAD_FORM_ROW --> <!-- Начало строки загрузки Cotonti -->
        <div class="list-group-item list-group-item-action"> <!-- Элемент списка -->
          <div class="row"> <!-- Сетка внутри элемента -->
            <!-- Сетка с отступами и выравниванием -->
            <div class="col-12 col-md-7"> <!-- Колонка описания -->
              <!-- Описание, 7/12 ширины -->
              <label for="ndesc" class="form-label fw-semibold">{PHP.L.Description}</label> <!-- Метка описания из Cotonti -->
              <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                <span class="input-group-text"># <span class="fw-semibold text-primary">{PFS_UPLOAD_FORM_ROW_NUM}</span></span> <!-- Номер строки из Cotonti -->
                <input type="text" class="form-control" name="ndesc[{PFS_UPLOAD_FORM_ROW_ID}]" value="" maxlength="255" /> <!-- Поле описания с ID из Cotonti -->
              </div>
            </div>
            <div class="col-12 col-md-5"> <!-- Колонка файла -->
              <!-- Файл, 5/12 ширины -->
              <label for="userfile" class="form-label fw-semibold">{PHP.L.File}</label> <!-- Метка файла из Cotonti -->
              <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                <input name="userfile[{PFS_UPLOAD_FORM_ROW_ID}]" type="file" class="form-control" size="24" /> <!-- Поле файла с ID из Cotonti -->
              </div>
            </div>
          </div>
          <!-- Закрытие строки сетки -->
        </div>
        <!-- END: PFS_UPLOAD_FORM_ROW --> <!-- Конец строки загрузки Cotonti -->
        <div class="list-group-item valid text-center"> <!-- Элемент списка для кнопки -->
          <button type="submit" class="btn btn-primary">{PHP.L.Upload}</button> <!-- Кнопка отправки из Cotonti -->
        </div>
      </div>
    </form>
  </div>
  <!-- END: PFS_UPLOAD_FORM --> <!-- Конец формы загрузки Cotonti -->

  <!-- Modal -->
  <div class="modal fade" id="pfs_newfolder" tabindex="-1" aria-labelledby="pfs_newfolder" aria-hidden="true"> <!-- Модальное окно для новой папки -->
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"> <!-- Диалог модального окна -->
      <div class="modal-content"> <!-- Контент модального окна -->
        <div class="modal-header"> <!-- Заголовок модального окна -->
          <h1 class="modal-title fs-5" id="pfs_newfolder">{PHP.L.pfs_newfolder}</h1> <!-- Заголовок модального окна из Cotonti -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> <!-- Кнопка закрытия -->
        </div>
        <div class="modal-body px-0"> <!-- Тело модального окна -->
          <!-- BEGIN: PFS_NEWFOLDER_FORM --> <!-- Начало формы новой папки Cotonti -->
          <form id="newfolder" action="{NEWFOLDER_FORM_ACTION}" method="post"> <!-- Форма создания папки с действием из Cotonti -->
            <div class="list-group list-group-striped list-group-flush"> <!-- Список полей формы -->
              <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка -->
                <div class="col-12"> <!-- Полная ширина -->
                  <label class="form-label fw-semibold">{PHP.L.Title}:</label> <!-- Метка названия из Cotonti -->
                  <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                    <input type="text" class="form-control" name="ntitle" value="" size="32" maxlength="64" /> <!-- Поле названия -->
                  </div>
                </div>
              </div>
              <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка -->
                <div class="col-12"> <!-- Полная ширина -->
                  <label class="form-label fw-semibold">{PHP.L.Description}:</label> <!-- Метка описания из Cotonti -->
                  <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                    <input type="text" class="form-control" name="ndesc" value="" size="32" maxlength="255" /> <!-- Поле описания -->
                  </div>
                </div>
              </div>
              <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка -->
                <div class="w-33">{PHP.L.pfs_ispublic}</div> <!-- Метка публичности из Cotonti -->
                <div class="w-66"> <!-- Колонка опций -->
                  <label class="radio-label me-3"> <!-- Радиокнопка "Да" -->
                    <input type="radio" class="form-check-input" name="nispublic" value="1" /> {PHP.L.Yes} <!-- Опция "Да" из Cotonti -->
                  </label>
                  <label class="radio-label"> <!-- Радиокнопка "Нет" -->
                    <input type="radio" class="form-check-input" name="nispublic" value="0" checked="checked" /> {PHP.L.No} <!-- Опция "Нет" из Cotonti -->
                  </label>
                </div>
              </div>
              <div class="list-group-item d-flex justify-content-between"> <!-- Элемент списка -->
                <div class="w-33">{PHP.L.pfs_isgallery}</div> <!-- Метка галереи из Cotonti -->
                <div class="w-66"> <!-- Колонка опций -->
                  <label class="radio-label me-3"> <!-- Радиокнопка "Да" -->
                    <input type="radio" class="form-check-input" name="nisgallery" value="1" /> {PHP.L.Yes} <!-- Опция "Да" из Cotonti -->
                  </label>
                  <label class="radio-label"> <!-- Радиокнопка "Нет" -->
                    <input type="radio" class="form-check-input" name="nisgallery" value="0" checked="checked" /> {PHP.L.No} <!-- Опция "Нет" из Cotonti -->
                  </label>
                </div>
              </div>
              <div class="list-group-item valid text-center"> <!-- Элемент списка для кнопки -->
                <button type="submit" class="btn btn-primary">{PHP.L.Create}</button> <!-- Кнопка создания из Cotonti -->
              </div>
            </div>
          </form>
          <!-- END: PFS_NEWFOLDER_FORM --> <!-- Конец формы новой папки Cotonti -->
        </div>
        <div class="modal-footer"> <!-- Футер модального окна -->
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> <!-- Кнопка закрытия -->
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="pfs_extallowed" tabindex="-1" aria-labelledby="pfs_extallowed" aria-hidden="true"> <!-- Модальное окно для расширений -->
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"> <!-- Диалог модального окна -->
      <div class="modal-content"> <!-- Контент модального окна -->
        <div class="modal-header"> <!-- Заголовок модального окна -->
          <h1 class="modal-title fs-5" id="pfs_extallowed">{PHP.L.pfs_extallowed}</h1> <!-- Заголовок модального окна из Cotonti -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> <!-- Кнопка закрытия -->
        </div>
        <div class="modal-body"> <!-- Тело модального окна -->
          <!-- Заголовок разрешённых расширений -->
          <!-- BEGIN: ALLOWED_ROW --> <!-- Начало строки расширений Cotonti -->
          <div class="floatleft small w-20"> <!-- Элемент списка расширений -->
            <span style="vertical-align:-15px;">{ALLOWED_ROW_ICON}</span> {ALLOWED_ROW_EXT} {ALLOWED_ROW_DESC} <!-- Иконка, расширение и описание из Cotonti -->
          </div>
          <!-- END: ALLOWED_ROW --> <!-- Конец строки расширений Cotonti -->
        </div>
        <div class="modal-footer"> <!-- Футер модального окна -->
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> <!-- Кнопка закрытия -->
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="pfs_info_paste" tabindex="-1" aria-labelledby="pfsInfoLabel" aria-hidden="true"> <!-- Модальное окно для информации о вставке -->
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"> <!-- Центрированный диалог с прокруткой -->
      <div class="modal-content"> <!-- Контент модального окна -->
        <div class="modal-header"> <!-- Заголовок -->
          <h1 class="modal-title fs-5" id="pfsInfoLabel">{PHP.L.Info}</h1> <!-- Заголовок с уникальным ID из Cotonti -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> <!-- Кнопка закрытия -->
        </div>
        <div class="modal-body"> <!-- Тело -->
          <ul class="list-group list-group-flush"> <!-- Список без границ -->
            <li class="list-group-item">{PHP.R.pfs_icon_pastethumb} {PHP.L.pfs_pastethumb}</li> <!-- Элемент "Вставить миниатюру" из Cotonti -->
            <li class="list-group-item">{PHP.R.pfs_icon_pasteimage} {PHP.L.pfs_pasteimage}</li> <!-- Элемент "Вставить изображение" из Cotonti -->
            <li class="list-group-item">{PHP.R.pfs_icon_pastefile} {PHP.L.pfs_pastefile}</li> <!-- Элемент "Вставить файл" из Cotonti -->
          </ul>
        </div>
        <div class="modal-footer"> <!-- Футер -->
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> <!-- Кнопка закрытия -->
        </div>
      </div>
    </div>
  </div>

</div>

<!-- BEGIN: STANDALONE_FOOTER --> <!-- Начало автономного футера Cotonti -->
<!-- Footer resources (scripts, etc.) -->
<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script> <!-- Подключение Bootstrap JS иначе модалки мертвы -->
  </body> <!-- Конец секции body -->
</html> <!-- Конец HTML -->
<!-- END: STANDALONE_FOOTER --> <!-- Конец автономного футера Cotonti -->

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие подключения mskin для админов Cotonti -->
<!-- Условие подключения mskin для админов -->
<!-- Подключение mskin.tpl для группы администраторов -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"} <!-- Подключение дополнительного шаблона mskin.tpl из Cotonti -->
<!-- Подключение дополнительного шаблона -->
<!-- ENDIF --> <!-- Конец условия подключения mskin -->
<!-- END: MAIN --> <!-- Конец основного блока Cotonti -->