<!-- BEGIN: MAIN -->
<!-- IF {PHP.cfg.homebreadcrumb} -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> {USERS_REGISTER_BREADCRUMBS} </ol>
    </nav>
  </div>
</div>
<!-- ENDIF -->
<div class="bg-body-secondary">
  <div class="container-xl min-height-50vh d-flex flex-column justify-content-center">
    <div class="row">
      <div class="col-12 col-xl-6 mx-auto">
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{USERS_REGISTER_TITLE}</h2>
          </div>
          <div class="card-body"> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} 
		  <form id="user-register" name="register" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
              <div class="row g-3">
                <div class="col-12">
                  <label for="regUser" class="form-label">{PHP.L.Username} <span class="text-danger">*</span>
                  </label>
                  <div class="input-group has-validation"> {USERS_REGISTER_USER} </div>
                </div>
                <div class="col-12">
                  <label for="regEmail" class="form-label">{PHP.L.users_validemail} <span class="text-danger">*</span>
                  </label>
                  <div class="input-group has-validation"> {USERS_REGISTER_EMAIL} </div>
                  <small class="form-text text-muted">{PHP.L.users_validemailhint}</small>
                </div>
                <div class="col-12">
                  <label for="regPassword" class="form-label">{PHP.L.Password} <span class="text-danger">*</span>
                  </label>
                  <div class="input-group has-validation"> {USERS_REGISTER_PASSWORD} </div>
                </div>
                <div class="col-12">
                  <label for="regPasswordRepeat" class="form-label">{PHP.L.users_confirmpass} <span class="text-danger">*</span>
                  </label>
                  <div class="input-group has-validation"> {USERS_REGISTER_PASSWORDREPEAT} </div>
                </div>
                <!-- IF {PHP.cfg.captchamain|cot_plugin_active($this)} -->
                <div class="col-12">
                  <label for="regVerify" class="form-label">{PHP.L.captcha_verification} <span class="text-danger">*</span>
                  </label>
                  <div class="input-group has-validation">
                    <div class="row g-3">
                      <div class="col-6"> {USERS_REGISTER_VERIFY_IMG} </div>
                      <div class="col-6"> {USERS_REGISTER_VERIFY_INPUT} </div>
                    </div>
                    <div class="invalid-feedback"> {PHP.L.captcha_users_verify_required} </div>
                  </div>
                </div>
                <!-- ENDIF -->
                <div class="col-12">
                  <div class="d-grid">
                    <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
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