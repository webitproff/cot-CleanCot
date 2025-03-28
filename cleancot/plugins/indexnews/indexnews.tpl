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
 * Updated: 28 March 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot  
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<div class="row g-5">
	<!-- BEGIN: PAGE_ROW -->
	<article class="col-12 col-md-6">
        <div class="card mb-3 border-0 shadow-none bg-transparent"> <!-- Прозрачный фон и без рамки -->
            <a href="{PAGE_ROW_URL}" class="text-decoration-none">
                <div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1;"> 
				<!-- IF {PAGE_ROW_LINK_MAIN_IMAGE} --> <!-- Экстраполе "link_main_image" Ссылка на главное изображение создаётся в: Управление сайтом / Прочее / Экстраполя / Таблица cot_pages - Модуль Pages -->
					<img src="{PAGE_ROW_LINK_MAIN_IMAGE}" alt="{PAGE_ROW_TITLE}" class="img-fluid object-fit-cover">
				<!-- ELSE -->
                    <img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cotonti-cleancot.webp" alt="{PAGE_ROW_TITLE}" class="img-fluid object-fit-cover">
				<!-- ENDIF -->
                </div>
            </a>
            <div class="card-body px-0">
                    <h3 class="card-title h5">
						<a href="{PAGE_ROW_URL}" class="text-decoration-none" title="{PAGE_ROW_TITLE}">{PAGE_ROW_TITLE}</a>
                    </h3>
                    <div class="card-text">
                        <ul class="list-unstyled d-flex flex-wrap gap-2 small text-muted">
                            <li>{PAGE_ROW_CAT_PATH}</li>
                            <li>
                                <time>{PAGE_ROW_CREATED}</time>
                            </li>
                            <li>
                                <a href="{PAGE_ROW_OWNER_DETAILS_URL}" class="badge text-bg-primary text-decoration-none">{PAGE_ROW_OWNER_NICKNAME}</a>
                            </li>
                        </ul>
                    </div>
            </div>
        </div>
    </article>
	<!-- END: PAGE_ROW -->
</div>

<div class="col-12">
	<!-- IF {PAGINATION} -->
	<nav aria-label="Page Pagination" class="mt-3">
	  <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
	  <ul class="pagination justify-content-center"> {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} </ul>
	</nav>
	<!-- ENDIF -->
</div>

<!-- END: MAIN -->
