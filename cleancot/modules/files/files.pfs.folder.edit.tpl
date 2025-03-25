<!-- BEGIN: MAIN -->
<!-- BEGIN: STANDALONE_HEADER -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}">
  <head>
    <title>{PHP.out.subtitle} - {PHP.cfg.maintitle}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="{PHP.cfg.mainurl}/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet"> 
	{PFS_HEAD} 
	<script type="text/javascript">
      //
      < ![CDATA[{
            PFS_HEADER_JAVASCRIPT
          }
          var formName = '{PFS_C1}';
          var inputName = '{PFS_C2}';
          //]]>
    </script>
  </head>
  <body>
    <div class="container-fluid bg-info bg-gradient min-vh-100">
      <div class="standalone py-4">
        <!-- END: STANDALONE_HEADER -->
        <div class="container">
          <div class="card mb-4">
            <div class="card-body">
              <nav aria-label="breadcrumb" class="">
                <h3>{BREADCRUMBS}</h3>
              </nav>
            </div>
          </div>
          <div class="card mb-4">
            <div class="card-body">
              <h1 class="">{PAGE_TITLE}</h1>
            </div>
          </div> 
		  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
          <!-- BEGIN: FORM -->
          <div class="card mb-4">
            <div class="card-body">
              <form action="{FOLDER_FORM_URL}" enctype="multipart/form-data" method="post" name="groupform" class="row g-3"> 
			  {FOLDER_FORM_HIDDEN} 
				<div class="col-md-12">
                  <label for="ff_title" class="form-label">Название: <span class="text-danger">*</span>
                  </label>
                  <div class="{PHP|cot_formGroupClass('ff_title')}"> {FOLDER_FORM_TITLE} </div>
                </div>
                <div class="col-md-12">
                  <label for="ff_desc" class="form-label">{PHP.L.Description}:</label>
                  <div class="{PHP|cot_formGroupClass('ff_desc')}"> {FOLDER_FORM_DESC} </div>
                </div>
                <div class="col-md-12">
                  <div class="form-check"> {FOLDER_FORM_PUBLIC} </div>
                </div>
                <!-- IF {FOLDER_FORM_ALBUM} -->
                <div class="col-md-12">
                  <div class="form-check"> {FOLDER_FORM_ALBUM} </div>
                </div>
                <!-- ENDIF -->
                <div class="col-md-12 text-end">
                  <button type="submit" class="btn btn-primary">
                    <i class="bi bi-check me-1"></i> {PHP.L.Submit} </button>
                </div>
              </form>
            </div>
          </div>
          <!-- END: FORM -->
          <!-- IF {IS_SITE_FILE_SPACE} == 0 -->
          <div class="card mb-4">
            <div class="card-body">
              <p class="card-text">{PHP.L.files_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL} ({PFS_PERCENTAGE}%)</p>
              <div class="progress" role="progressbar" aria-label="Total size" aria-valuenow="{PFS_PERCENTAGE}" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar {PFS_PROGRESSBAR_CLASS}" style="width: {PFS_PERCENTAGE}%">{PFS_PERCENTAGE}%</div>
              </div>
              <p class="card-text mt-2">{PHP.L.files_maxsize}: {PFS_MAXFILESIZE}</p>
            </div>
          </div>
          <!-- ENDIF -->
          <!-- IF {FILES_WIDGET} != '' -->
          <div class="card mb-4">
            <div class="card-body">
              <div class="mb-3">
                <strong>{PFS_FILES_COUNT}</strong> {PHP.L.files_inthisfolder}
              </div>
              <div class="row">
                <div class="col-12">{FILES_WIDGET}</div>
              </div>
            </div>
          </div>
          <!-- ENDIF -->
          <div class="card mt-4">
            <div class="card-body">
              <h4 class="card-title">{PHP.L.files_extallowed}:</h4>
              <div class="alert alert-primary" role="alert">
                <!-- BEGIN: ALLOWED_ROW -->{ALLOWED_ROW_EXT},
                <!-- END: ALLOWED_ROW -->
              </div>
            </div>
          </div>
          <!-- BEGIN: STANDALONE_FOOTER -->
          <div class="card mt-4 mb-4">
            <div class="card-body"> {PHP.R.files_icon_pastethumb} {PHP.L.files_pastethumb} {PHP.R.files_icon_pasteimage} {PHP.L.files_pasteimage} {PHP.R.files_icon_pastefile} {PHP.L.files_pastefile} 
              <small class="d-inline-flex mb-3 px-2 py-1 fw-semibold text-danger bg-danger bg-opacity-10 border border-danger border-opacity-10 rounded-2">(требуется доработать)</small>
            </div>
          </div>
        </div>
        <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
        <div class="container mt-4 mb-4">
          <div class="alert alert-warning" role="alert">
            <p>
              <span class="fw-bold">{PHP.usr.profile.user_name}</span>, you are using the template <code>files.pfs.folder.edit.tpl</code>
              <a href="https://abuyfile.com/forums/cotonti/original/mod-files" class="alert-link">Help and support</a> for the <span class="fw-bold">"Files"</span> module.
            </p>
          </div>
        </div>
        <!-- ENDIF -->
      </div>
    </div> 
	{FOOTER_RC}
  </body>
</html>
<!-- END: STANDALONE_FOOTER -->
<!-- END: MAIN -->