<!-- 
/********************************************************************************
 * File: footer.tpl
 * Description: HTML template for the website footer with system info and more
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
<!-- BEGIN: FOOTER -->
<footer class="py-4">
    <div class="container-xl">
        <div class="row">
			<!-- Navigation section --> <!-- Секция навигации -->
			<div class="col-md-3 mb-3"> <!-- Контейнер колонки шириной 3/12 для экранов md и больше с нижним отступом -->
			  <h5 class="fw-bold mb-3">{PHP.L.Navigation}</h5> <!-- Заголовок 5 уровня с жирным шрифтом и нижним отступом, выводит "Навигация" из языкового файла cleancot.**.lang.php -->
			  <ul class="list-group list-group-flush"> <!-- Список с классами Bootstrap для стилизации как группа без внутренних границ -->
				<!-- IF {PHP|cot_module_active('forums')} --> <!-- Условие Cotonti: проверка активности модуля "forums" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('forums')}" class="nav-link" title="{PHP.L.Forums}"> <!-- Ссылка на страницу форумов с классом навигации и всплывающей подсказкой "Форумы" -->
					<i class="fa-solid fa-comments me-2"></i> {PHP.L.Forums} <!-- Иконка комментариев (ассоциация с форумами) с отступом справа и текст "Форумы" из языкового файла -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF --> <!-- Конец условия для модуля "forums" -->
				<!-- IF {PHP|cot_plugin_active('userarticles')} --> <!-- Условие Cotonti: проверка активности плагина "userarticles" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('plug', 'e=userarticles')}" class="nav-link" title="{PHP.L.userarticles_title}"> <!-- Ссылка на страницу пользовательских статей с классом навигации и всплывающей подсказкой из языкового файла плагина -->
					<i class="fa-solid fa-file-lines me-2"></i> {PHP.L.userarticles_title} <!-- Иконка текстового файла (ассоциация со статьями) с отступом справа и текст из языкового файла -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF --> <!-- Конец условия для плагина "userarticles" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном (без условия, всегда отображается) -->
				  <a href="{PHP|cot_url('users')}" class="nav-link" title="{PHP.L.Users}"> <!-- Ссылка на страницу пользователей с классом навигации и всплывающей подсказкой "Пользователи" -->
					<i class="fa-solid fa-users me-2"></i> {PHP.L.Users} <!-- Иконка группы пользователей (ассоциация с пользователями) с отступом справа и текст "Пользователи" из языкового файла -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
			  </ul> <!-- Закрытие списка -->
			</div> <!-- Закрытие контейнера колонки -->

			<!-- RSS feeds section (shown only if RSS module is active) --> <!-- Секция RSS-лент, отображается только если активен модуль RSS -->
			<div class="col-md-3 mb-3"> <!-- Контейнер колонки шириной 3/12 для экранов md и больше с нижним отступом -->
			  <!-- IF {PHP|cot_module_active('rss')} --> <!-- Условие Cotonti: проверка активности модуля "rss" -->
			  <h5 class="fw-bold mb-3">{PHP.L.RSS_Feeds}</h5> <!-- Заголовок 5 уровня с жирным шрифтом и нижним отступом, выводит "RSS-ленты" из языкового файла cleancot.**.lang.php -->
			  <ul class="list-group list-group-flush"> <!-- Список с классами Bootstrap для стилизации как группа без внутренних границ -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('rss')}" class="nav-link" title="{PHP.L.RSS_Feeds}"> <!-- Ссылка на общую RSS-ленту с классом навигации и всплывающей подсказкой "RSS-ленты" -->
					<i class="fa-solid fa-rss me-2"></i> {PHP.L.RSS_Feeds} <!-- Иконка RSS (ассоциация с лентами) с отступом справа и текст "RSS-ленты" из языкового файла -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
				<!-- IF {PHP.cfg.forums} --> <!-- Условие Cotonti: проверка наличия настроек форумов -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('rss','m=forums')}" class="nav-link" title="{PHP.L.RSS_Feeds} {PHP.cfg.separator} {PHP.L.Forums}"> <!-- Ссылка на RSS-ленту форумов с классом навигации и составной всплывающей подсказкой -->
					<i class="fa-solid fa-rss me-2"></i> {PHP.L.Forums} <!-- Иконка RSS (ассоциация с лентами форумов) с отступом справа и текст "Форумы" из языкового файла -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF --> <!-- Конец условия для форумов -->
			  </ul> <!-- Закрытие списка -->
			  <!-- ENDIF --> <!-- Конец условия для модуля "rss" -->
			</div> <!-- Закрытие контейнера колонки -->

			<!-- Navigation section --> <!-- Секция навигации -->
			<div class="col-md-3 mb-3"> <!-- Контейнер колонки шириной 3/12 для экранов md и больше с нижним отступом -->
			  <h5 class="fw-bold mb-3">{PHP.L.CleanCot_pub_in_sections}</h5> <!-- Заголовок 5 уровня с жирным шрифтом и нижним отступом, выводит "Публикации в разделах" из языкового файла cleancot.**.lang.php -->
			  <ul class="list-group list-group-flush "> <!-- Список без внутренних отступов и границ между элементами -->
				<!-- IF {PHP.structure.page.news} -->
				<!-- IF {PHP.structure.page.news.path} --> <!-- Условие Cotonti: проверка существования пути к категории "news" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('page','c=news')}" class="nav-link" title="{PHP.L.CleanCot_cat_title_news}"> <!-- Ссылка на страницу новостей с классом навигации и всплывающей подсказкой "Новости" -->
					<i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_news} </a> <!-- Иконка газеты с отступом справа и текст "Новости" из языкового файла cleancot.**.lang.php -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF -->
				<!-- ENDIF --> <!-- Конец условия для категории "news" -->
				<!-- IF {PHP.structure.page.articles} -->
				<!-- IF {PHP.structure.page.articles.path} --> <!-- Условие Cotonti: проверка существования пути к категории "articles" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('page','c=articles')}" class="nav-link" title="{PHP.L.CleanCot_cat_title_articles}"> <!-- Ссылка на страницу статей с классом навигации и всплывающей подсказкой "Статьи" -->
					<i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_articles} </a> <!-- Иконка газеты с отступом справа и текст "Статьи" из языкового файла -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF -->
				<!-- ENDIF --> <!-- Конец условия для категории "articles" -->
				<!-- IF {PHP.structure.page.events} -->
				<!-- IF {PHP.structure.page.events.path} --> <!-- Условие Cotonti: проверка существования пути к категории "events" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('page','c=events')}" class="nav-link" title="{PHP.L.CleanCot_cat_title_events}"> <!-- Ссылка на страницу событий с классом навигации и всплывающей подсказкой "События" -->
					<i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_events}</a> <!-- Иконка газеты с отступом справа и текст "События" из языкового файла -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF -->
				<!-- ENDIF --> <!-- Конец условия для категории "events" -->
			  </ul> <!-- Закрытие списка -->
			</div> <!-- Закрытие контейнера колонки -->
            
			<!-- Additional links section --> <!-- Секция дополнительных ссылок -->
			<div class="col-md-3 mb-3"> <!-- Контейнер колонки шириной 3/12 для экранов md и больше с нижним отступом -->
			  <h5 class="fw-bold mb-3">{PHP.L.Links}</h5> <!-- Заголовок 5 уровня с жирным шрифтом и нижним отступом, выводит "Ссылки" из языкового файла cleancot.**.lang.php -->
			  <ul class="list-group list-group-flush"> <!-- Список с классами Bootstrap для стилизации как группа без внутренних границ -->
				<!-- IF {PHP|cot_plugin_active('contact')} --> <!-- Условие Cotonti: проверка активности плагина "contact" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('contact')}" class="nav-link" title="{PHP.L.contact_title}"> <!-- Ссылка на страницу контактов с классом навигации и всплывающей подсказкой из языкового файла -->
					<i class="fa-solid fa-envelope me-2"></i> {PHP.L.contact_title} <!-- Иконка конверта (ассоциация с контактами) с отступом справа и текст из языкового файла cleancot.**.lang.php -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF --> <!-- Конец условия для плагина "contact" -->
				<!-- IF {PHP|cot_plugin_active('statistics')} --> <!-- Условие Cotonti: проверка активности плагина "statistics" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('statistics')}" class="nav-link" title="{PHP.L.Statistics}"> <!-- Ссылка на страницу статистики с классом навигации и всплывающей подсказкой "Статистика" -->
					<i class="fa-solid fa-chart-bar me-2"></i> {PHP.L.Statistics} <!-- Иконка столбчатой диаграммы (ассоциация со статистикой) с отступом справа и текст из языкового файла -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF --> <!-- Конец условия для плагина "statistics" -->
				<!-- IF {PHP|cot_plugin_active('whosonline')} --> <!-- Условие Cotonti: проверка активности плагина "whosonline" -->
				<li class="list-group-item bg-transparent"> <!-- Элемент списка с прозрачным фоном -->
				  <a href="{PHP|cot_url('whosonline')}" class="nav-link" title="{PHP.L.CleanCot_WhosOnline}"> <!-- Ссылка на страницу "Кто онлайн" с классом навигации и всплывающей подсказкой из языкового файла cleancot.**.lang.php -->
					<i class="fa-solid fa-users-rectangle me-2"></i> {PHP.L.CleanCot_WhosOnline} <!-- Иконка группы пользователей (ассоциация с "Кто онлайн") с отступом справа и текст из языкового файла -->
				  </a> <!-- Закрытие ссылки -->
				</li> <!-- Закрытие элемента списка -->
				<!-- ENDIF --> <!-- Конец условия для плагина "whosonline" -->
			  </ul> <!-- Закрытие списка -->
			</div> <!-- Закрытие контейнера колонки -->
			
        </div>
    </div>
</footer>
<div class="border border-secondary"></div>
<!-- Secondary footer section with system info --> <!-- Вторичная секция футера с системной информацией -->
<div class="bg-costum-dgrey"> <!-- Контейнер с чёрным фоном и градиентом -->
    <div class="container-xl py-3"> <!-- Внутренний контейнер с увеличенной шириной и вертикальными отступами -->
        <div class="text-white"> <!-- Блок с белым цветом текста -->
            <div class="row justify-content-between"> <!-- Сетка Bootstrap с выравниванием элементов по краям -->
                <!-- Cotonti CMS link with tooltip --> <!-- Ссылка на Cotonti CMS с всплывающей подсказкой -->
                <div class="col-md-auto text-center text-md-start"> <!-- Колонка с автоматической шириной, центрирование текста на мобильных, выравнивание влево на md и больше -->
                    <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="text-white text-decoration-none" data-bs-toggle="tooltip" data-bs-title="{PHP.L.footer_cotonti_tooltip}"> <!-- Ссылка на GitHub Cotonti с белым цветом, без подчёркивания и всплывающей подсказкой из языкового файла -->
                        <span class="me-2">{PHP.L.footer_engine}</span> <!-- Текст "Движок" из языкового файла cleancot.**.lang.php с отступом справа -->
                        <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/cleancot/img/cotonti-icon.png" width="27" height="27" alt="Cotonti CMF"> <!-- Иконка Cotonti с заданными размерами и альтернативным текстом -->
                        <span class="ms-2">{PHP.L.footer_cotonti}</span> <!-- Текст "Cotonti" из языкового файла cleancot.**.lang.php с отступом слева -->
                    </a> <!-- Закрытие ссылки -->
                </div> <!-- Закрытие колонки -->
                <!-- Copyright notice --> <!-- Уведомление об авторских правах -->
                <div class="col-md-auto text-center text-md-end"> <!-- Колонка с автоматической шириной, центрирование текста на мобильных, выравнивание вправо на md и больше -->
                    <p class="mb-0">{PHP.cfg.maintitle} © {PHP.sys.now|cot_date('l, d F Y H:i', $this)}</p> <!-- Параграф без нижнего отступа с названием сайта и текущей датой/временем в формате "день, дата месяц год часы:минуты" -->
                </div> <!-- Закрытие колонки -->
            </div> <!-- Закрытие сетки -->
        </div> <!-- Закрытие блока с белым текстом -->

        <hr class="border-light"> <!-- Горизонтальная линия с светлой границей -->

        <!-- System information row --> <!-- Строка с системной информацией -->
        <div class="row text-costum-light-grey text-decoration-none"> <!-- Сетка с приглушённым светлым текстом и без подчёркивания -->
            <!-- PHP version and page creation time --> <!-- Версия PHP и время создания страницы -->
            <!-- IF {PHP|custom_php_version()} --> <!-- Условие Cotonti: проверка наличия результата функции custom_php_version -->
            <div class="col"> <!-- Колонка с полной шириной на мобильных -->
                <p class="mb-0">{PHP.L.footer_php_version}: <span class="badge bg-dark">{PHP|custom_php_version()}</span><br>{FOOTER_CREATIONTIME}</p> <!-- Параграф без нижнего отступа с текстом "Версия PHP", значком версии и временем генерации страницы -->
            </div> <!-- Закрытие колонки -->
            <!-- ENDIF --> <!-- Конец условия для версии PHP -->
            <!-- Legacy mode status --> <!-- Статус режима совместимости -->
            <!-- IF {PHP|getLegacyModeStatus()} --> <!-- Условие Cotonti: проверка наличия результата функции getLegacyModeStatus -->
            <div class="col"> <!-- Колонка с полной шириной на мобильных -->
                <p class="mb-0">{PHP.L.footer_legacy_mode}: {PHP|getLegacyModeStatus()}</p> <!-- Параграф без нижнего отступа с текстом "Режим совместимости" и статусом из функции -->
            </div> <!-- Закрытие колонки -->
            <!-- ENDIF --> <!-- Конец условия для режима совместимости -->
            <!-- Core and DB version --> <!-- Версия ядра и базы данных -->
            <!-- IF {PHP|getRevisionValue()} --> <!-- Условие Cotonti: проверка наличия результата функции getRevisionValue -->
            <div class="col-md-auto"> <!-- Колонка с автоматической шириной на md и больше -->
                <p class="mb-0">{PHP.L.footer_core_version}: v.{PHP.cfg.version} / {PHP.L.footer_db_version}: v.{PHP|getRevisionValue()}</p> <!-- Параграф без нижнего отступа с версией ядра Cotonti и версией базы данных -->
            </div> <!-- Закрытие колонки -->
            <!-- ENDIF --> <!-- Конец условия для версий ядра и БД -->
        </div> <!-- Закрытие сетки с системной информацией -->
    </div> <!-- Закрытие внутреннего контейнера -->
</div> <!-- Закрытие контейнера с фоном -->
<!-- Кнопка back-to-top -->
<button type="button" data-bs-toggle="tooltip" data-bs-title="Woo-hoo!!!" class="btn btn-light position-fixed bottom-0 end-0 m-3" id="btn-back-to-top">
    <i class="fa-solid fa-jet-fighter-up fa-lg"></i>
</button>

<!-- JavaScript -->
<script>
    let backToTopButton = document.getElementById("btn-back-to-top");

    // Скролл наверх при клике
    backToTopButton.addEventListener("click", function() {
        window.scrollTo({ top: 0, behavior: "smooth" });
    });
</script>
<!-- Search modal (shown only if search plugin is active) -->
<!-- IF {PHP|cot_plugin_active('search')} -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-primary-subtle text-primary-emphasis">
                <h5 class="modal-title" id="searchModalLabel">{PHP.L.Search}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="search" action="{PHP|cot_url('search')}" method="GET" class="d-flex">
                    <!-- Hidden input required for URL editor compatibility -->
                    <!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
                    <input type="hidden" name="e" value="search" />
                    <!-- ENDIF -->
                    <input type="text" name="sq" class="form-control me-2" placeholder="{PHP.L.Search}..." />
                    <button type="submit" class="btn btn-primary" title="{PHP.L.Search}">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->

<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие Cotonti: проверка, является ли главная группа пользователя администраторской (ID 5) -->
<!-- Developer mode section (shown only if enabled) --> <!-- Секция режима разработчика, отображается только если включена -->
<!-- IF {FOOTER_DEVMODE} --> <!-- Условие Cotonti: проверка, активен ли режим разработчика. включается в Управление сайтом / Конфигурация / Безопасность [Режим отладки: Да] -->
<div class="py-3 bg-warning bg-gradient text-dark"> <!-- Контейнер с вертикальными отступами, жёлтым фоном с градиентом и тёмным текстом -->
<div class="container-xl">
        <p>{PHP.L.footer_creation_time}: {FOOTER_CREATIONTIME}</p> <!-- Параграф с текстом "Время создания" и значением времени генерации страницы из Cotonti -->
        <p>{PHP.L.footer_hooks_fired}: {FOOTER_HOOKS}</p> <!-- Параграф с текстом "Сработавшие хуки" и количеством выполненных хуков из Cotonti для получения полного списка работающих на данной странице хуков в порядке их применения -->
        <!-- IF {FOOTER_SQLSTATISTICS} --> <!-- Условие Cotonti: проверка наличия статистики SQL-запросов -->
        <div>{PHP.L.footer_sql_statistics}: {FOOTER_SQLSTATISTICS}</div> <!-- Блок с текстом "Статистика SQL" и данными о запросах из Cotonti -->
        <!-- ENDIF --> <!-- Конец условия для статистики SQL -->
        <p>{FOOTER_DEVMODE}</p> <!-- Параграф с информацией о режиме разработчика из Cotonti -->
</div>
</div> <!-- Закрытие контейнера с жёлтым фоном -->
<!-- ENDIF --> <!-- Конец условия для режима разработчика -->
<!-- ENDIF --> <!-- Конец условия для администраторской группы -->

<!-- Footer resources (scripts, etc.) -->
{FOOTER_RC}
</body>
</html>
<!-- END: FOOTER -->
