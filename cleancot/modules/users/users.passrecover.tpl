<!-- 
/********************************************************************************
 * File: users.passrecover.tpl
 * Extention: module 'users'
 * Description: HTML template Password recovery member account. // HTML-шаблон восстановление пароля учетной записи участника
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
<!-- IF {PHP.cfg.homebreadcrumb} -->
<div class="bg-light py-2 border-bottom border-secondary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> {PASSRECOVER_BREADCRUMBS} </ol>
    </nav>
  </div>
</div>
<!-- ENDIF -->
<div class="py-4">
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
			<div class="list-group list-group-flush mb-4">
				<li class="list-group-item">1. <span class="text-warning-emphasis fw-semibold">{PHP.L.pasrec_explain1}</span></li>
				<li class="list-group-item">2. <span class="text-warning-emphasis fw-semibold">{PHP.L.pasrec_explain2}</span></li>
				<li class="list-group-item">3. <span class="text-warning-emphasis fw-semibold">{PHP.L.pasrec_explain3}</span></li>
			</div>
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
			<div class="p-1 px-2 mt-3 mb-0 alert alert-info" role="alert">
			  <small>{PHP.L.pasrec_explain4}</small>
			</div>
            <!-- ENDIF -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->