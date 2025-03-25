<!-- BEGIN: MAIN -->
<!-- BEGIN: STANDALONE_HEADER -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}">
  <head>
    <title>{PHP.out.subtitle} - {PHP.cfg.maintitle}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Добавлен viewport для адаптивности -->
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
    <div class="container-fluid bg-primary bg-gradient min-vh-100">
      <!-- Добавлен min-vh-100 для высоты -->
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
              <!-- IF {FOLDER_DESC} -->
              <div class="mb-3">
                <p>{FOLDER_DESC}</p>
              </div>
              <!-- ENDIF -->
            </div>
          </div>
          <!-- Вставка предупреждений --> 
		  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
		  <div class="card bg-light bg-gradient mb-4">
            <div class="card-body">
              <!-- BEGIN: FOLDERS -->
              <div class="mb-3">
                <strong>{FOLDERS_COUNT}</strong>
                <!-- IF {FOLDERS_COUNT_RAW} > 0 --> / {FOLDERS_FILES_COUNT} <small class="text-muted">({PHP.L.files_onpage}: {FOLDERS_ONPAGE_COUNT} / {FOLDERS_ONPAGE_FILES_COUNT})</small>
                <!-- ENDIF -->
              </div>
              <div class="text-end mb-3">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#dlgNewFolder">
                  <i class="bi bi-folder-plus me-1"></i> {PHP.L.files_newfolder} </button>
              </div>
              <!-- IF {FOLDERS_COUNT_RAW} > 0 -->
              <div class="table-responsive">
                <table class="table table-hover align-middle">
                  <thead class="table-light">
                    <tr>
                      <th scope="col" class="col-1"></th>
                      <th scope="col">{PHP.L.Folder} / {PHP.L.Gallery}</th>
                      <th scope="col" class="text-center">{PHP.L.Public}</th>
                      <th scope="col" class="text-center">{PHP.L.Files}</th>
                      <th scope="col" class="text-center">{PHP.L.Size}</th>
                      <th scope="col" class="text-center">{PHP.L.Updated}</th>
                      <th scope="col" class="text-center">{PHP.L.Action}</th>
                    </tr>
                  </thead>
                  <tbody>
                    <!-- BEGIN: ROW -->
                    <tr>
                      <td class="text-center">
                        <a href="{FOLDER_ROW_PFS_URL}">{FOLDER_ROW_ICON}</a>
                      </td>
                      <td>
                        <p class="mb-1 fw-bold">
                          <a href="{FOLDER_ROW_PFS_URL}">{FOLDER_ROW_TITLE}</a>
                        </p>
                        <p class="mb-1 text-muted small">{FOLDER_ROW_DESC}</p>
                        <p class="mb-0 text-muted fst-italic small">
                          <em>{PHP.L.files_pastecode}:</em>
                          <code>[pfs_gallery?f={FOLDER_ROW_ID}]</code>
                        </p>
                      </td>
                      <td class="text-center">{FOLDER_ROW_PUBLIC}</td>
                      <td class="text-center">{FOLDER_ROW_ITEMS_COUNT}</td>
                      <td class="text-center">{FOLDER_ROW_ITEMS_SIZE}</td>
                      <td class="text-center">{FOLDER_ROW_UPDATE_DATE}</td>
                      <td class="text-center">
                        <div class="btn-group" role="group">
                          <a href="{FOLDER_ROW_EDIT_URL}" class="btn btn-outline-secondary btn-sm" title="{PHP.L.Edit}" data-bs-toggle="tooltip" data-bs-placement="top">
                            <i class="bi bi-pencil"></i>
                          </a>
                          <!-- IF {PFS_IS_STANDALONE} -->
                          <a href="javascript:addgallery('{FOLDER_ROW_ID}')" class="btn btn-outline-secondary btn-sm" title="{PHP.L.files_pastegallery}" data-bs-toggle="tooltip" data-bs-placement="top">
                            <i class="bi bi-image"></i>
                          </a>
                          <!-- ENDIF -->
                          <a href="{FOLDER_ROW_DELETE_URL}" class="btn btn-danger btn-sm confirmLink" title="{PHP.L.Delete}" data-bs-toggle="tooltip" data-bs-placement="top">
                            <i class="bi bi-trash"></i>
                          </a>
                        </div>
                      </td>
                    </tr>
                    <!-- END: ROW -->
                  </tbody>
                </table>
              </div>
              <!-- ENDIF -->
              <!-- IF {FOLDERS_PAGINATION} -->
              <nav aria-label="Folders pagination" class="mt-3">
                <ul class="pagination justify-content-end"> {FOLDERS_PAGEPREV} {FOLDERS_PAGINATION} {FOLDERS_PAGENEXT} </ul>
              </nav>
              <!-- ENDIF -->
            </div>
          </div>
          <!-- END: FOLDERS -->
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
          <!-- IF {FOLDER_EDIT_URL} -->
          <div class="text-end mb-4">
            <a href="{FOLDER_EDIT_URL}" class="btn btn-primary">
              <i class="bi bi-pencil me-1"></i> {PHP.L.Edit} </a>
          </div>
          <!-- ENDIF -->
          <div class="card mt-4">
            <div class="card-body">
              <div class="mb-3">
                <strong>{PFS_FILES_COUNT}</strong>
                <!-- IF {PFS_IS_ROOT} -->{PHP.L.files_intheroot}
                <!-- ELSE -->{PHP.L.files_inthisfolder}
                <!-- ENDIF -->
              </div>
              <div class="row">
                <div class="col-12">{FILES_WIDGET}</div>
              </div>
            </div>
          </div>
          <div class="card mt-4">
            <div class="card-body">
              <h4 class="card-title">{PHP.L.files_extallowed}:</h4>
              <div class="alert alert-primary" role="alert">
                <!-- BEGIN: ALLOWED_ROW -->{ALLOWED_ROW_EXT},
                <!-- END: ALLOWED_ROW -->
              </div>
            </div>
          </div>
        </div>
        <!-- BEGIN: FOLDER_NEWFORM -->
        <div class="modal fade" id="dlgNewFolder" tabindex="-1" aria-labelledby="newFolderModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="newFolderModalLabel">{PHP.L.files_newfolder}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <form name="login" id="dlgNewFolderForm" action="{FOLDER_ADDFORM_URL}" method="post"> {FOLDER_ADDFORM_HIDDEN} <div class="modal-body">
                  <div class="mb-3">
                    <label for="folderTitle" class="form-label">{PHP.L.Title}:</label> {FOLDER_ADDFORM_TITLE}
                  </div>
                  <div class="mb-3">
                    <label for="folderDesc" class="form-label">{PHP.L.Description}:</label> {FOLDER_ADDFORM_DESC}
                  </div>
                  <div class="form-check mb-3"> {FOLDER_ADDFORM_ALBUM} </div>
                  <div class="form-check mb-3"> {FOLDER_ADDFORM_PUBLIC} </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                    <i class="bi bi-x me-1"></i> {PHP.L.Cancel} </button>
                  <button type="submit" class="btn btn-primary">
                    <i class="bi bi-check me-1"></i> {PHP.L.Submit} </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- END: FOLDER_NEWFORM -->
        <!-- BEGIN: STANDALONE_FOOTER -->
        <div class="container">
          <div class="card mt-4 mb-4">
            <div class="card-body"> {PHP.R.files_icon_pastethumb} {PHP.L.files_pastethumb} {PHP.R.files_icon_pasteimage} {PHP.L.files_pasteimage} {PHP.R.files_icon_pastefile} {PHP.L.files_pastefile} 
			<p><small class="d-inline-flex mb-3 px-2 py-1 fw-semibold text-danger bg-danger bg-opacity-10 border border-danger border-opacity-10 rounded-2">(требуется доработать)</small></p>
			</div>
          </div>
        </div>
        <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
        <div class="container mt-4 mb-4">
          <div class="alert alert-warning" role="alert">
            <p>
              <span class="fw-bold">{PHP.usr.profile.user_name}</span>, you are using the template <code>files.pfs.tpl</code>
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