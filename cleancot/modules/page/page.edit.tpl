<!-- BEGIN: MAIN -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {PAGEEDIT_BREADCRUMBS}
      </ol>
    </nav>
  </div>
</div>

<div class="bg-body-secondary">
  <div class="container-md d-flex flex-column justify-content-center">
	  <!-- IF !{PHP.usr_can_publish} -->
	  <div class="mb-3 mt-3">
		<div class="alert alert-info" role="alert"> {PHP.L.page_formhint} </div>
	  </div>
	  <!-- ENDIF -->
    <div class="row">
      <div class="col-12 col-md-10 mx-auto">
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID}</h2>
          </div>
          <div class="card-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            <form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="needs-validation" novalidate>
              <div class="row g-3">
                <div class="col-12">
                  <label for="pageCat" class="form-label fw-semibold">{PHP.L.Category}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_CAT}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageTitle" class="form-label fw-semibold">{PHP.L.Title}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_TITLE}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageDesc" class="form-label fw-semibold">{PHP.L.Description}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_DESCRIPTION}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageAuthor" class="form-label fw-semibold">{PHP.L.Author}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_AUTHOR}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageDate" class="form-label fw-semibold">{PHP.L.Date}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_DATE}
                  </div>
                  <small class="form-text text-muted mt-1">{PAGEEDIT_FORM_DATENOW} {PHP.L.page_date_now}</small>
                </div>
                <div class="col-12">
                  <label for="pageBegin" class="form-label fw-semibold">{PHP.L.Begin}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_BEGIN}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageExpire" class="form-label fw-semibold">{PHP.L.Expire}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_EXPIRE}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageStatus" class="form-label fw-semibold">{PHP.L.Status}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_LOCAL_STATUS}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageAlias" class="form-label fw-semibold">{PHP.L.Alias}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_ALIAS}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageKeywords" class="form-label fw-semibold">{PHP.L.page_metakeywords}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_KEYWORDS}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageMetaTitle" class="form-label fw-semibold">{PHP.L.page_metatitle}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_METATITLE}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageMetaDesc" class="form-label fw-semibold">{PHP.L.page_metadesc}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_METADESC}
                  </div>
                </div>
                <!-- BEGIN: TAGS -->
                <div class="col-12">
                  <label for="pageTags" class="form-label fw-semibold">{PAGEEDIT_TOP_TAGS}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_TAGS}
                  </div>
                  <small class="form-text text-muted">{PAGEEDIT_TOP_TAGS_HINT}</small>
                </div>
                <!-- END: TAGS -->
                <!-- BEGIN: ADMIN -->
                <div class="col-12">
                  <label for="pageOwner" class="form-label fw-semibold">{PHP.L.Owner}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_OWNER_ID}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageHits" class="form-label fw-semibold">{PHP.L.Hits}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_HITS}
                  </div>
                </div>
                <!-- END: ADMIN -->
                <div class="col-12">
                  <label for="pageParser" class="form-label fw-semibold">{PHP.L.Parser}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_PARSER}
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageText" class="form-label fw-semibold">{PHP.L.Text}</label>
                  {PAGEEDIT_FORM_TEXT}
                </div>
				<!-- IF {PHP|cot_module_active('pfs')} -->
                <div class="col-12">
                  <label for="pageText" class="form-label fw-semibold">{PHP.L.CleanCot_PFS}</label>
                  <div class="mt-2">
                    <!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
                    <!-- IF {PAGEEDIT_FORM_SFS} --><span class="me-2">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageFile" class="form-label fw-semibold">{PHP.L.page_file}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_FILE}
                  </div>
                  <small class="form-text text-muted">{PHP.themelang.pageadd.Filehint}</small>
                </div>
                <div class="col-12">
                  <label for="pageUrl" class="form-label fw-semibold">{PHP.L.URL}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_URL}
                  </div>
                  <div class="mt-2">
                    {PAGEEDIT_FORM_URL_PFS}   {PAGEEDIT_FORM_URL_SFS}
                  </div>
                  <small class="form-text text-muted">{PHP.L.page_urlhint}</small>
                </div>
                <div class="col-12">
                  <label for="pageSize" class="form-label fw-semibold">{PHP.L.page_filesize}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_SIZE}
                  </div>
                  <small class="form-text text-muted">{PHP.L.page_filesizehint}</small>
                </div>
                <div class="col-12">
                  <label for="pageDownloads" class="form-label fw-semibold">{PHP.L.page_filehitcount}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_FILE_DOWNLOADS}
                  </div>
                  <small class="form-text text-muted">{PHP.L.page_filehitcounthint}</small>
                </div>
				<!-- ELSE -->
				<!-- IF {PHP.usr.isadmin} AND !{PHP|cot_module_active('files')} -->
				<div class="col-12">
					<div class="mb-3 mt-3">
						<div class="alert alert-info" role="alert"> {PHP.L.CleanCot_not_installed_PFS} </div>
					</div>
				 </div>
				<!-- ENDIF -->
				<!-- ENDIF -->
				<!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
				
				<div class="card shadow-sm rounded-3 mb-4 bg-body">
					<div class="card-body p-3">
						<h4 class="border-bottom text-primary pb-2 mb-0">Прикрепление файлов "на-лету"</h4>
						<div class="mt-3">
							{PAGEEDIT_FORM_ID|cot_filesFileBox('page', $this)}
						</div>
					</div>
				</div>
				
                <div class="col-12">
                  <label for="pageText" class="form-label fw-semibold">{PHP.L.CleanCot_Files}</label>
                  <div class="mt-2">
                    <!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
                    <!-- IF {PAGEEDIT_FORM_SFS} --><span class="me-2">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageFile" class="form-label fw-semibold">{PHP.L.page_file}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_FILE}
                  </div>
                  <small class="form-text text-muted">{PHP.L.page_filehint}</small>
                </div>
                <div class="col-12">
                  <label for="pageUrl" class="form-label fw-semibold">{PHP.L.URL}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_URL}
                  </div>
                  <div class="mt-2">
                    {PAGEEDIT_FORM_URL_PFS}   {PAGEEDIT_FORM_URL_SFS}
                  </div>
                  <small class="form-text text-muted">{PHP.L.page_urlhint}</small>
                </div>
                <div class="col-12">
                  <label for="pageSize" class="form-label fw-semibold">{PHP.L.Filesize}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_SIZE}
                  </div>
                  <small class="form-text text-muted">{PHP.L.page_filesizehint}</small>
                </div>
				<!-- ELSE -->
				<!-- IF {PHP.usr.isadmin} AND !{PHP|cot_module_active('pfs')} -->
				<div class="col-12">
					<div class="mb-3 mt-3">
						<div class="alert alert-primary" role="alert"> {PHP.L.CleanCot_not_installed_Files} </div>
					</div>
				 </div>
				<!-- ENDIF -->
				<!-- ENDIF -->
                <div class="col-12">
                  <label for="pageDelete" class="form-label fw-semibold">{PHP.L.page_deletepage}</label>
                  <div class="input-group has-validation">
                    {PAGEEDIT_FORM_DELETE}
                  </div>
                </div>
                <div class="col-12">
                  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <!-- IF {PHP.usr_can_publish} -->
                    <button type="submit" name="rpagestate" value="0" class="btn btn-success">{PHP.L.Publish}</button>
                    <!-- ENDIF -->
                    <button type="submit" name="rpagestate" value="2" class="btn btn-secondary">{PHP.L.Saveasdraft}</button>
                    <button type="submit" name="rpagestate" value="1" class="btn btn-warning">{PHP.L.Submitforapproval}</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->