<!-- 
/********************************************************************************
 * File: indexnews.tpl
 * Extention: plugin 'indexnews'
 * Description: HTML template for displaying the latest articles or news on the main page of a site from a specific category.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 03 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->

<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->

    <div class="row g-5"> <!-- Сетка Bootstrap с отступами между элементами -->
	
        <!-- BEGIN: PAGE_ROW --> <!-- Начало цикла вывода новостей -->
		
            <article class="col-12 col-md-6"> <!-- Элемент статьи, занимает всю ширину на малых экранах, половину на средних -->
                <div class="card mb-3 border-0 shadow-none bg-transparent"> <!-- Карточка без границ и теней, с прозрачным фоном -->
				
                    <a href="{PAGE_ROW_URL}" class="text-decoration-none"> <!-- Ссылка на статью без подчеркивания -->
                        <div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1;"> <!-- Контейнер изображения с закруглением и тенью -->
                            <!-- IF {PAGE_ROW_LINK_MAIN_IMAGE} --> <!-- Условие: проверка наличия главного изображения -->
                                <img src="{PAGE_ROW_LINK_MAIN_IMAGE}" alt="{PAGE_ROW_TITLE}" class="img-fluid object-fit-cover"> <!-- Изображение статьи, если задано -->
                            <!-- ELSE --> <!-- Альтернатива при отсутствии изображения -->
                                <img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cotonti-cleancot.webp" alt="{PAGE_ROW_TITLE}" class="img-fluid object-fit-cover"> <!-- Дефолтное изображение -->
                            <!-- ENDIF --> <!-- Конец условия проверки изображения -->
                        </div> <!-- Закрывающий тег контейнера изображения -->
                    </a> <!-- Закрывающий тег ссылки на статью -->
					
                    <div class="card-body px-0"> <!-- Тело карточки без горизонтальных отступов -->
                        <h3 class="card-title h5"> <!-- Заголовок статьи размером h5 -->
                            <a href="{PAGE_ROW_URL}" class="text-decoration-none" title="{PAGE_ROW_TITLE}">{PAGE_ROW_TITLE}</a> <!-- Ссылка на статью с заголовком -->
                        </h3> <!-- Закрывающий тег заголовка -->
                        <div class="card-text"> <!-- Контейнер для текста карточки -->
                            <ul class="list-unstyled d-flex flex-wrap gap-2 small text-muted"> <!-- Список метаданных без маркеров -->
                                <li>{PAGE_ROW_CAT_PATH}</li> <!-- Путь категории статьи -->
                                <li> <!-- Элемент списка для даты -->
                                    <time>{PAGE_ROW_CREATED}</time> <!-- Дата создания статьи -->
                                </li> <!-- Закрывающий тег элемента даты -->
                                <li> <!-- Элемент списка для автора -->
                                    <a href="{PAGE_ROW_OWNER_DETAILS_URL}" class="badge text-bg-primary text-decoration-none">{PAGE_ROW_OWNER_NICKNAME}</a> <!-- Ссылка на автора с бейджем -->
                                </li> <!-- Закрывающий тег элемента автора -->
                            </ul> <!-- Закрывающий тег списка метаданных -->
                        </div> <!-- Закрывающий тег контейнера текста -->
                    </div> <!-- Закрывающий тег тела карточки -->
                </div> <!-- Закрывающий тег карточки -->
				
            </article> <!-- Закрывающий тег статьи -->
			
        <!-- END: PAGE_ROW --> <!-- Конец цикла вывода новостей -->
		
    </div> <!-- Закрывающий тег сетки -->
	
	<!-- IF {PAGINATION} --> <!-- Условие: отображение пагинации, если есть страницы -->
    <div class="col-12"> <!-- Колонка на всю ширину для пагинации -->
	
            <nav aria-label="Page Pagination" class="mt-3"> <!-- Навигация для пагинации с отступом сверху -->
			
                <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div> <!-- Информация о текущей странице -->
				
                <ul class="pagination justify-content-center"> <!-- Список пагинации с центрированием -->
                    {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} <!-- Плейсхолдеры для навигации по страницам -->
                </ul> <!-- Закрывающий тег списка пагинации -->
				
            </nav> <!-- Закрывающий тег навигации пагинации -->
			
    </div> <!-- Закрывающий тег колонки пагинации -->
	<!-- ENDIF --> <!-- Конец условия пагинации -->
	
    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие: отображение только для группы администраторов (ID 5) -->
        <div class="container-xl"> <!-- Контейнер для уведомления администратора -->
            <div class="alert alert-warning" role="alert"> <!-- Блок предупреждения Bootstrap -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>indexnews.tpl</code> <!-- Текст уведомления с именем шаблона -->
            </div> <!-- Закрывающий тег блока предупреждения -->
        </div> <!-- Закрывающий тег контейнера уведомления -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
	
<!-- END: MAIN --> <!-- Конец основного блока шаблона -->