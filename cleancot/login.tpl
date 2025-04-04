<!-- BEGIN: MAIN -->
<div class="container-xl min-height-50vh d-flex flex-column justify-content-center">
    <div class="row">
        <div class="col-12 col-xl-6 mx-auto">
            <div class="card mt-4 mb-4">
                <div class="card-header bg-primary text-white">
                    <h2 class="h5 mb-0">{USERS_AUTH_TITLE}</h2>
                </div>
                <div class="card-body">
                    <!-- Если пользователь авторизован -->
                    <!-- IF {PHP.usr.id} -->
                    <p>{PHP.L.users_loggedinas} <strong>{PHP.usr.name}</strong>.<br>{PHP.L.users_logoutfirst}</p>
                    <p><a class="btn btn-outline-primary" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">{PHP.L.Logout}</a></p>
                    <!-- Иначе показываем форму логина -->
                    <!-- ELSE -->
                    <form id="login" name="login" action="{USERS_AUTH_SEND}" method="post" class="needs-validation" novalidate>
                        <div class="mb-3">
                            <label for="authUser" class="form-label">{PHP.L.users_nameormail}:</label>
                            {USERS_AUTH_USER}
                        </div>
                        <div class="mb-3">
                            <label for="authPassword" class="form-label">{PHP.L.Password}:</label>
                            {USERS_AUTH_PASSWORD}
                        </div>
                        <div class="mb-3 form-check">
                            {USERS_AUTH_REMEMBER}
                            <label class="form-check-label" for="authRemember">{PHP.L.users_rememberme}</label>
                        </div>
                        <div class="d-grid">
                            <button type="submit" name="rlogin" value="0" class="btn btn-primary">{PHP.L.Login}</button>
                        </div>
                    </form>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
    </div>

    <!-- Блок обслуживания -->
    <!-- BEGIN: USERS_AUTH_MAINTENANCE -->
    <div class="row">
        <div class="col-12">
            <div class="alert alert-danger mb-4" role="alert">
                <h4 class="alert-heading h6">{PHP.L.users_maintenance1}</h4>
                <p class="mb-0">{PHP.L.users_maintenance2}</p>
            </div>
        </div>
    </div>
    <!-- END: USERS_AUTH_MAINTENANCE -->
</div>
<!-- END: MAIN -->