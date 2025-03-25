<!-- BEGIN: MAIN -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{LIST_BREADCRUMBS} </ol>
    </nav>
  </div>
</div>
<div class="bg-body-secondary">
  <div class="container-md d-flex flex-column justify-content-center pb-5"> 
  {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} 
  <div class="row">
      <div class="col-12 col-md-8 mx-auto pt-4">
        <!-- BEGIN: LIST_CAT_ROW -->
        <div class="mb-3">
          <h3 class="h5">
            <a href="{LIST_CAT_ROW_URL}" title="{LIST_CAT_ROW_TITLE}">{LIST_CAT_ROW_TITLE}</a> ({LIST_CAT_ROW_COUNT})
          </h3>
          <!-- IF {LIST_CAT_ROW_DESCRIPTION} -->
          <p class="small mb-0">{LIST_CAT_ROW_DESCRIPTION}</p>
          <!-- ENDIF -->
        </div>
        <!-- END: LIST_CAT_ROW -->
        <!-- IF {LIST_CAT_PAGINATION} -->
        <nav aria-label="Category Pagination" class="mb-3">
          <div class="text-center mb-2">{PHP.L.Page} {LIST_CAT_CURRENT_PAGE} {PHP.L.Of} {LIST_CAT_TOTAL_PAGES}</div>
          <ul class="pagination justify-content-center"> {LIST_CAT_PREVIOUS_PAGE} {LIST_CAT_PAGINATION} {LIST_CAT_NEXT_PAGE} </ul>
        </nav>
        <!-- ENDIF -->
        <!-- BEGIN: LIST_ROW -->
        <div class="card mb-4">
		  <div class="card-header bg-secondary-subtle text-dark">
            <h2 class="h5 card-title mb-0"><a href="{LIST_ROW_URL}" title="{LIST_ROW_TITLE}">{LIST_ROW_TITLE}</a></h2>
          </div>
          <div class="card-body">
            <!-- Описание -->
            <!-- IF {LIST_ROW_DESCRIPTION} -->
            <p class="card-text text-muted small">{LIST_ROW_DESCRIPTION}</p>
            <!-- ENDIF -->
            <!-- Текст новости -->
            <div class="card-text"> {LIST_ROW_TEXT_CUT|strip_tags($this)}
              <!-- IF {LIST_ROW_TEXT_IS_CUT} -->
              <a href="{LIST_ROW_URL}" class="btn btn-outline-primary btn-sm mt-2">{PHP.L.ReadMore}</a>
              <!-- ENDIF -->
			                <!-- IF {PHP.usr.isadmin} -->
              <small class="text-muted me-2">[ {LIST_ROW_ADMIN_EDIT} ]</small>
              <!-- ENDIF -->
			  <!-- IF {LIST_ROW_ADMIN} -->{LIST_ROW_ADMIN} {LIST_ROW_ADMIN_DELETE} ({LIST_ROW_HITS})<!-- ENDIF -->
            </div>
            <!-- Количество комментариев -->
			<!-- IF {LIST_ROW_COMMENTS_COUNT} > 0-->
            <div class="position-absolute top-0 end-0 mt-2 me-2" data-bs-toggle="tooltip" data-bs-title="{PHP.L.CleanCot_Comments}">
              <span class="badge bg-primary">{LIST_ROW_COMMENTS_COUNT}</span>
            </div>
			<!-- ENDIF -->
          </div>
        </div>
        <!-- END: LIST_ROW -->
        <!-- IF {PAGINATION} -->
        <nav aria-label="Page Pagination" class="mt-3">
          <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
          <ul class="pagination justify-content-center"> {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} </ul>
        </nav>
        <!-- ENDIF -->
      </div>
      <!-- Боковая панель -->
      <div class="col-12 col-md-4 mx-auto">
        <!-- IF {PHP.usr.auth_write} -->
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{PHP.L.Admin}</h2>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <!-- IF {PHP.usr.isadmin} -->
              <li class="list-group-item">
                <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
              </li>
              
              <!-- IF {PHP.structure.page.unvalidated.path} -->
              <li class="list-group-item">
                <a href="{PHP|cot_url('page','c=unvalidated')}" title="{PHP.structure.page.unvalidated.title}">{PHP.structure.page.unvalidated.title}</a>
              </li>
              <!-- ENDIF -->
			  <!-- ENDIF -->
              <li class="list-group-item">{LIST_SUBMIT_NEW_PAGE}</li>
            </ul>
          </div>
        </div>
        <!-- ENDIF -->
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{PHP.L.Tags}</h2>
          </div>
          <div class="card-body"> {LIST_TAG_CLOUD} </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
