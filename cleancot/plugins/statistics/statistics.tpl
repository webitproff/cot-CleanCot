<!-- 
/********************************************************************************
 * File: statistics.tpl
 * Extention: plugin 'statistics'
 * Description: HTML template of the statistics plugin
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 28 March 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot  
 * Demo:  https://cleancot.previewit.work 
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона Cotonti -->
<div class="bg-light py-2 border-bottom border-secondary"> <!-- Контейнер с светлым фоном, вертикальными отступами 2 и серой нижней границей -->
  <div class="container py-2"> <!-- Внутренний контейнер Bootstrap с вертикальными отступами 2 -->
    <nav aria-label="breadcrumb"> <!-- Навигационный элемент для хлебных крошек с меткой для доступности -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{PHP.L.plu_title}</ol> <!-- Список хлебных крошек без нижнего отступа, с горизонтальной прокруткой и текстом заголовка плагина -->
    </nav> <!-- Закрытие навигационного элемента -->
  </div> <!-- Закрытие внутреннего контейнера -->
</div> <!-- Закрытие контейнера хлебных крошек -->
<div class="py-4"> <!-- Контейнер с вертикальными отступами 4 для основного контента -->
  <div class="container-xl min-height-50vh d-flex flex-column pb-5"> <!-- Контейнер с увеличенной шириной, минимальной высотой 50vh, flex-колонкой и нижним отступом 5 -->
    <div class="row"> <!-- Сетка Bootstrap для размещения колонок -->
      <div class="col-12"> <!-- Колонка полной ширины (12/12) -->
        <div class="card mt-4 mb-4"> <!-- Карточка Bootstrap с верхним и нижним отступами 4 -->
          <div class="card-body"> <!-- Тело карточки -->
            <h3>{PHP.L.Main}:</h3> <!-- Заголовок 3 уровня для секции "Основное" -->
            <div class="list-group mb-3"> <!-- Контейнер списка с нижним отступом 3 -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_maxwasreached} {STATISTICS_MAX_DATE}, {STATISTICS_MAX_HITS} {PHP.L.plu_pagesdisplayedthisday}</div> <!-- Колонка с максимальной статистикой, 8/12 на md+ -->
                  <div class="col-12 col-md-4"></div> <!-- Пустая колонка для выравнивания, 4/12 на md+ -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_totalpagessince} {STATISTICS_SINCE}</div> <!-- Колонка с текстом "Всего страниц с", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPAGES}</div> <!-- Колонка с количеством страниц, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_registeredusers}</div> <!-- Колонка с текстом "Зарегистрированные пользователи", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBUSERS}</div> <!-- Колонка с количеством пользователей, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.Pages}</div> <!-- Колонка с текстом "Страницы", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPAGES}</div> <!-- Колонка с количеством страниц, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_totalmails}</div> <!-- Колонка с текстом "Всего писем", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALMAILSENT}</div> <!-- Колонка с количеством писем, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.comments_comments}</div> <!-- Колонка с текстом "Комментарии", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBCOMMENTS}</div> <!-- Колонка с количеством комментариев, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
            </div> <!-- Закрытие контейнера списка -->

            <h3>{PHP.L.Private_Messages}:</h3> <!-- Заголовок 3 уровня для секции "Личные сообщения" -->
            <div class="list-group mb-3"> <!-- Контейнер списка с нижним отступом 3 -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_totalpms}</div> <!-- Колонка с текстом "Всего ЛС", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPMSENT}</div> <!-- Колонка с количеством ЛС, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_totalactivepms}</div> <!-- Колонка с текстом "Активные ЛС", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPMACTIVE}</div> <!-- Колонка с количеством активных ЛС, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_totalarchivedpms}</div> <!-- Колонка с текстом "Архивные ЛС", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPMARCHIVED}</div> <!-- Колонка с количеством архивных ЛС, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
            </div> <!-- Закрытие контейнера списка -->

            <h3>{PHP.L.Forums}:</h3> <!-- Заголовок 3 уровня для секции "Форумы" -->
            <div class="list-group mb-3"> <!-- Контейнер списка с нижним отступом 3 -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_viewsforums}</div> <!-- Колонка с текстом "Просмотры форумов", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBVIEWS}</div> <!-- Колонка с количеством просмотров, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_postsforums}</div> <!-- Колонка с текстом "Сообщения форумов", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPOSTS}</div> <!-- Колонка с количеством сообщений, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_topicsforums}</div> <!-- Колонка с текстом "Темы форумов", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBTOPICS}</div> <!-- Колонка с количеством тем, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
            </div> <!-- Закрытие контейнера списка -->

            <h3>{PHP.L.plu_pollsratings}:</h3> <!-- Заголовок 3 уровня для секции "Опросы и рейтинги" -->
            <div class="list-group mb-3"> <!-- Контейнер списка с нижним отступом 3 -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_pagesrated}</div> <!-- Колонка с текстом "Оценённые страницы", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBRATINGS}</div> <!-- Колонка с количеством оценок, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_votesratings}</div> <!-- Колонка с текстом "Голоса за рейтинги", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBRATINGSVOTES}</div> <!-- Колонка с количеством голосов, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_polls}</div> <!-- Колонка с текстом "Опросы", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPOLLS}</div> <!-- Колонка с количеством опросов, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_votespolls}</div> <!-- Колонка с текстом "Голоса за опросы", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPOLLSVOTES}</div> <!-- Колонка с количеством голосов, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
            </div> <!-- Закрытие контейнера списка -->

            <h3>{PHP.L.PFS}:</h3> <!-- Заголовок 3 уровня для секции "PFS" -->
            <div class="list-group mb-3"> <!-- Контейнер списка с нижним отступом 3 -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_pfsspace}</div> <!-- Колонка с текстом "Пространство PFS", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBFILES}</div> <!-- Колонка с количеством файлов, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.plu_pfssize}, {PHP.L.kb}</div> <!-- Колонка с текстом "Размер PFS, кб", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBFILESIZE}</div> <!-- Колонка с размером файлов, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
            </div> <!-- Закрытие контейнера списка -->

            <h3>{PHP.L.plu_contributions}:</h3> <!-- Заголовок 3 уровня для секции "Вклад" -->
            <div class="list-group mb-3"> <!-- Контейнер списка с нижним отступом 3 -->
              <!-- BEGIN: IS_USER --> <!-- Начало цикла для авторизованных пользователей -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.forums_posts}</div> <!-- Колонка с текстом "Сообщения форумов", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_USER_POSTSCOUNT}</div> <!-- Колонка с количеством сообщений, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.forums_topics}</div> <!-- Колонка с текстом "Темы форумов", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_USER_TOPICSCOUNT}</div> <!-- Колонка с количеством тем, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-8">{PHP.L.comments_comments}</div> <!-- Колонка с текстом "Комментарии", 8/12 на md+ -->
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_USER_COMMENTS}</div> <!-- Колонка с количеством комментариев, 4/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <!-- END: IS_USER --> <!-- Конец цикла для пользователей -->
              <!-- BEGIN: IS_NOT_USER --> <!-- Начало блока для неавторизованных пользователей -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12">{PHP.L.plu_notloggedin}</div> <!-- Колонка с текстом "Не авторизован", полная ширина -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <!-- END: IS_NOT_USER --> <!-- Конец блока для неавторизованных -->
            </div> <!-- Закрытие контейнера списка -->

            <h3>{PHP.L.plu_membersbycountry}:</h3> <!-- Заголовок 3 уровня для секции "Пользователи по странам" -->
            <div class="list-group mb-3"> <!-- Контейнер списка с нижним отступом 3 -->
              <div class="list-group-item list-group-item-dark"> <!-- Элемент списка с тёмным фоном для заголовков -->
                <div class="row align-items-center fw-bold"> <!-- Сетка с выравниванием по центру и жирным текстом -->
                  <div class="col-12 col-md-1">{PHP.L.plu_flag}</div> <!-- Колонка для "Флаг", 1/12 на md+, центрирование -->
                  <div class="col-12 col-md-8"><a href="{STATISTICS_PLU_URL}">{PHP.cot_img_down}</a> {PHP.L.Country}</div> <!-- Колонка для "Страна" с сортировкой, 8/12 на md+ -->
                  <div class="col-12 col-md-3 text-md-end"><a href="{STATISTICS_SORT_BY_USERCOUNT}" rel="nofollow">{PHP.cot_img_down}</a> {PHP.L.Users}</div> <!-- Колонка для "Пользователи" с сортировкой, 3/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки заголовков -->
              </div> <!-- Закрытие элемента заголовков -->
              <!-- BEGIN: ROW_COUNTRY --> <!-- Начало цикла для стран -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-1">{STATISTICS_COUNTRY_FLAG}</div> <!-- Колонка с флагом страны, 1/12 на md+, центрирование -->
                  <div class="col-12 col-md-8">{STATISTICS_COUNTRY_NAME}</div> <!-- Колонка с названием страны, 8/12 на md+ -->
                  <div class="col-12 col-md-3 text-md-end">{STATISTICS_COUNTRY_COUNT}</div> <!-- Колонка с количеством пользователей, 3/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <!-- END: ROW_COUNTRY --> <!-- Конец цикла для стран -->
              <div class="list-group-item"> <!-- Элемент списка для строки -->
                <div class="row align-items-center"> <!-- Сетка с выравниванием по центру -->
                  <div class="col-12 col-md-1"><img src="images/flags/f-00.png" alt="" /></div> <!-- Колонка с флагом неизвестной страны, 1/12 на md+, центрирование -->
                  <div class="col-12 col-md-8">{PHP.L.plu_unknown}</div> <!-- Колонка с текстом "Неизвестно", 8/12 на md+ -->
                  <div class="col-12 col-md-3 text-md-end">{STATISTICS_UNKNOWN_COUNT}</div> <!-- Колонка с количеством неизвестных, 3/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
              <div class="list-group-item"> <!-- Элемент списка для итогов -->
                <div class="row align-items-center fw-bold"> <!-- Сетка с выравниванием по центру и жирным текстом -->
                  <div class="col-12 col-md-9 text-md-end">{PHP.L.Total}:</div> <!-- Колонка с текстом "Итого", 9/12 на md+, выравнивание вправо -->
                  <div class="col-12 col-md-3 text-md-end">{STATISTICS_TOTALUSERS}</div> <!-- Колонка с общим количеством пользователей, 3/12 на md+, выравнивание вправо -->
                </div> <!-- Закрытие сетки -->
              </div> <!-- Закрытие элемента списка -->
            </div> <!-- Закрытие контейнера списка -->
          </div> <!-- Закрытие тела карточки -->
        </div> <!-- Закрытие карточки -->
      </div> <!-- Закрытие колонки полной ширины -->
    </div> <!-- Закрытие сетки -->
  </div> <!-- Закрытие контейнера с минимальной высотой -->
</div> <!-- Закрытие контейнера основного контента -->

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие PHP.usr.maingrp == 5 - просмотр info для админов -->
<div class="container-xl">
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is the HTML template <code>statistics.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
</div>
<!-- ENDIF --> <!-- Конец условия просмотр info для админов -->

<!-- END: MAIN --> <!-- Конец основного блока шаблона Cotonti -->