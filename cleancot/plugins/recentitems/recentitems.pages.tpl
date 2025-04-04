<!-- 
/********************************************************************************
 * File: recentitems.pages.tpl
 * Extention: plugin 'recentitems'
 * Description: HTML plugin template recentitems - display updated pages on the recentitems page.
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
<div class="card mb-5">
  <div class="card-header card-header bg-primary-subtle">
    <h2 class="h5 mb-0 text-primary-emphasis text-decoration-none">{PHP.L.Pages}</h2>
  </div>
  <div class="card-body p-0">
    <div class="list-group list-group-striped list-group-flush">
      <!-- BEGIN: PAGE_ROW -->
      <li class="list-group-item list-group-item-action {PAGE_ROW_ODDEVEN}">
        <div class="row g-3">
          <div class="col-12 col-md-8">
            <h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis">
              <a class="text-reset" href="{PAGE_ROW_URL}">{PAGE_ROW_TITLE}</a>
            </h5>
            <!-- IF {PAGE_ROW_DESCRIPTION} -->
            <p class="mb-1">{PAGE_ROW_DESCRIPTION}</p>
            <!-- ELSE -->
            <p class="mb-1">{PAGE_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 90, 'UTF-8')} ...</p>
            <!-- ENDIF -->
            <div>
              <small class="text-body-secondary">{PAGE_ROW_CAT_PATH}</small>
            </div>
          </div>
          <div class="col-12 col-md-4 text-center">
            <div>
              <small class="text-body-secondary">{PHP.L.Author} {PAGE_ROW_OWNER_NAME}</small>
            </div>
            <div>
              <small class="text-body-secondary">{PHP.L.Date}: {PAGE_ROW_CREATED_STAMP|cot_date('date_full', $this)}</small>
              <small class="text-body-secondary">{PHP.L.Views}: ({PAGE_ROW_HITS})</small>
            </div>
          </div>
        </div>
      </li>
      <!-- END: PAGE_ROW -->
      <!-- BEGIN: NO_PAGES_FOUND -->
      <div class="list-group-item text-center text-muted py-3">{PHP.L.recentitems_nonewpages}</div>
      <!-- END: NO_PAGES_FOUND -->
    </div>
  </div>
</div>

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие PHP.usr.maingrp == 5 - просмотр info для админов -->
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is the HTML template <code>recentitems.pages.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
<!-- ENDIF --> <!-- Конец условия просмотр info для админов -->


<!-- END: MAIN -->