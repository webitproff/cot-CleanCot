<!-- BEGIN: MAIN -->
<div class="bg-body-secondary">
  <div class="container-xl min-height-50vh d-flex flex-column justify-content-center">
    <div class="row">
      <div class="col-12 col-xl-6 mx-auto">
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{CONTACT_TITLE}</h2>
          </div>
          <div class="card-body">
            <!-- Описание и карта -->
            <!-- IF {PHP.cfg.plugin.contact.about} -->
            <p>{PHP.cfg.plugin.contact.about}</p>
            <!-- ENDIF -->
            <!-- IF {PHP.cfg.plugin.contact.map} -->
            <p>{PHP.cfg.plugin.contact.map}</p>
            <!-- ENDIF -->
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            <!-- BEGIN: FORM -->
            <form id="contact-form" name="contact_form" action="{CONTACT_FORM_SEND}" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
              <div class="row g-3">
                <div class="col-12">
                  <label for="contactAuthor" class="form-label">{PHP.L.Username}</label>
                  <div class="input-group has-validation">
                    {CONTACT_FORM_AUTHOR}
                  </div>
                </div>
                <div class="col-12">
                  <label for="contactEmail" class="form-label">{PHP.L.Email}</label>
                  <div class="input-group has-validation">
                    {CONTACT_FORM_EMAIL}
                  </div>
                </div>
                <div class="col-12">
                  <label for="contactSubject" class="form-label">{PHP.L.Subject}</label>
                  <div class="input-group has-validation">
                    {CONTACT_FORM_SUBJECT}
                  </div>
                </div>
                <div class="col-12">
                  <label for="contactText" class="form-label">{PHP.L.Message}</label>
                  <div class="input-group has-validation">
                    {CONTACT_FORM_TEXT}
                  </div>
                </div>
                <!-- BEGIN: EXTRAFLD -->
                <div class="col-12">
                  <label for="contactExtrafld" class="form-label">{CONTACT_FORM_EXTRAFLD_TITLE}</label>
                  <div class="input-group has-validation">
                    {CONTACT_FORM_EXTRAFLD}
                  </div>
                </div>
                <!-- END: EXTRAFLD -->
                <!-- BEGIN: CAPTCHA -->
                <div class="col-12">
                  <label for="regVerify" class="form-label">{PHP.L.captcha_verification} <span class="text-danger">*</span></label>
                  <div class="input-group has-validation">
                    <div class="row g-3">
                      <div class="col-6">
                        {CONTACT_FORM_VERIFY_IMG}
                      </div>
                      <div class="col-6">
                        {CONTACT_FORM_VERIFY_INPUT}
                      </div>
                    </div>
                    <div class="invalid-feedback">{PHP.L.captcha_users_verify_required}</div>
                  </div>
                </div>
                <!-- END: CAPTCHA -->
                <div class="col-12">
                  <div class="d-grid">
                    <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
                  </div>
                </div>
              </div>
            </form>
            <!-- END: FORM -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->