<!-- BEGIN: MAIN -->
<!-- IF {PHP.cfg.homebreadcrumb} -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> {PASSRECOVER_BREADCRUMBS} </ol>
    </nav>
  </div>
</div>
<!-- ENDIF -->
<div class="bg-body-secondary">
  <div class="container-xl min-height-50vh d-flex flex-column justify-content-center">
    <div class="row">
      <div class="col-12 col-xl-6 mx-auto">
        <div class="card">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{PASSRECOVER_TITLE}</h2>
          </div>
          <div class="card-body">
            <!-- IF {PHP.msg} == 'request' -->
            <p class="mb-0">{PHP.L.pasrec_mailsent}</p>
            <!-- ENDIF -->
            <!-- IF {PHP.msg} == 'auth' -->
            <p class="mb-0">{PHP.L.pasrec_mailsent2}</p>
            <!-- ENDIF -->
            <!-- IF !{PHP.msg} -->
            <ol class="mb-4">
              <li>{PHP.L.pasrec_explain1}</li>
              <li>{PHP.L.pasrec_explain2}</li>
              <li>{PHP.L.pasrec_explain3}</li>
            </ol>
            <form id="password-recover" name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post" class="row g-3">
              <div class="col-12">
                <label for="recoverEmail" class="form-label">{PHP.L.pasrec_youremail}</label>
                <input type="text" class="form-control" name="email" value="" size="20" maxlength="64" id="recoverEmail" />
              </div>
              <div class="col-12">
                <div class="d-grid">
                  <button type="submit" class="btn btn-primary">{PHP.L.pasrec_request}</button>
                </div>
              </div>
            </form>
            <p class="mt-4 mb-0">{PHP.L.pasrec_explain4}</p>
            <!-- ENDIF -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->