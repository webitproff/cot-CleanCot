<!-- BEGIN: MAIN -->
<div class="bg-body-secondary">
    <div class="container min-height-50vh d-flex flex-column justify-content-center">
        <div class="row">
            <div class="col-12 col-md-8 mx-auto">
                <div class="card my-4">
                    <!-- BEGIN: COMMENTS_TITLE -->
                    <h2 class="card-header">
                        {PHP.L.CleanCot_Comment_Edit}
                    </h2>
                    <!-- END: COMMENTS_TITLE -->
                    <div class="card-body">
                        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
                        <!-- BEGIN: COMMENTS_FORM_EDIT -->
                        <form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
                            <div class="row g-3">
                                <div class="col-12 col-md-4">
                                    <strong>{COMMENTS_POSTER_TITLE}:</strong>
                                </div>
                                <div class="col-12 col-md-8">
                                    {COMMENTS_POSTER}
                                </div>
                                <div class="col-12 col-md-4">
                                    <strong>{COMMENTS_IP_TITLE}:</strong>
                                </div>
                                <div class="col-12 col-md-8">
                                    {COMMENTS_IP}
                                </div>
                                <div class="col-12 col-md-4">
                                    <strong>{COMMENTS_DATE_TITLE}:</strong>
                                </div>
                                <div class="col-12 col-md-8">
                                    {COMMENTS_DATE}
                                </div>
                                <div class="col-12">
                                    {COMMENTS_FORM_TEXT}
                                    <!-- IF {PHP|cot_module_active('pfs')} -->
                                        <!-- IF {COMMENTS_FORM_PFS} -->
                                        {COMMENTS_FORM_PFS}
                                        <!-- ENDIF -->
                                        <!-- IF {COMMENTS_FORM_SFS} -->
                                        <span class="mx-2">{PHP.cfg.separator}</span>
                                        {COMMENTS_FORM_SFS}
                                        <!-- ENDIF -->
                                    <!-- ENDIF -->
                                    <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
                                        <!-- IF {COMMENTS_FORM_PFS} -->
                                        {COMMENTS_FORM_PFS}
                                        <!-- ENDIF -->
                                        <!-- IF {COMMENTS_FORM_SFS} -->
                                        <span class="mx-2">{PHP.cfg.separator}</span>
                                        {COMMENTS_FORM_SFS}
                                        <!-- ENDIF -->
                                    <!-- ENDIF -->
                                </div>
                                <div class="col-12 text-center">
                                    <input type="submit" class="btn btn-primary" value="{COMMENTS_FORM_UPDATE_BUTTON}">
                                </div>
                            </div>
                        </form>
                        <!-- END: COMMENTS_FORM_EDIT -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->

<!-- BEGIN: COMMENTS -->
<!-- IF !{COMMENTS_IS_AJAX} -->
<div id="comments">
<!-- ENDIF -->
    <div class="" <!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display:none;"<!-- ENDIF -->>
        <!-- BEGIN: COMMENTS_ROW -->
        <div class="card mb-3">
            <div class="card-body">
                <div id="com{COMMENTS_ROW_ID}" class="comment-row mb-3">
                    <div class="row g-3">
                        <div class="col-12 col-md-3">
                            <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} -->
                                <!-- IF {COMMENTS_ROW_AUTHOR_AVATAR_ID} > 0 -->
                                <img class="rounded-circle" src="{COMMENTS_ROW_AUTHOR_AVATAR_URL}" width="55" height="55" alt="{COMMENTS_ROW_NAME}">
                                <!-- ELSE -->
                                <img class="rounded-circle" width="55" height="55" alt="{COMMENTS_ROW_NAME}" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp">
                                <!-- ENDIF -->
                            <!-- ENDIF -->
                            <!-- IF {PHP|cot_plugin_active('userimages')} -->
                                <p class="mb-1">{COMMENTS_ROW_AUTHOR_AVATAR}</p>
                            <!-- ENDIF -->
                            <p class="mb-1">
                                <a href="{COMMENTS_ROW_URL}">{COMMENTS_ROW_ORDER}.</a> {COMMENTS_ROW_AUTHOR}
                            </p>
                            <p class="mb-0">{COMMENTS_ROW_DATE}</p>
                        </div>
                        <div class="col-12 col-md-9">
                            {COMMENTS_ROW_TEXT}
                            <!-- IF {COMMENTS_ROW_ADMIN} OR {COMMENTS_ROW_EDIT} -->
                            <div class="text-end mt-2">
                                {COMMENTS_ROW_ADMIN} {COMMENTS_ROW_EDIT}
                            </div>
                            <!-- ENDIF -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: COMMENTS_ROW -->

        <!-- IF {COMMENTS_PAGINATION} -->
        <div class="mt-3">
            <nav aria-label="Comments navigation">
                <ul class="pagination justify-content-center">
                    {COMMENTS_PREVIOUS_PAGE}
                    {COMMENTS_PAGINATION}
                    {COMMENTS_NEXT_PAGE}
                </ul>
            </nav>
            <p class="text-center"><span>{COMMENTS_PAGES_INFO}</span></p>
        </div>
        <!-- ENDIF -->

        <!-- BEGIN: COMMENTS_NEWCOMMENT -->
        <h2 class="h4 mt-4 mb-3">{PHP.L.Newcomment}</h2>
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
        <div class="card mb-3">
            <div class="card-body">
                <form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment" class="mb-3">
                    <!-- BEGIN: GUEST -->
                    <div class="mb-3">
                        {PHP.L.Name}: {COMMENTS_FORM_AUTHOR}
                    </div>
                    <!-- END: GUEST -->
                    <div class="mb-3">
                        {COMMENTS_FORM_TEXT}
                        <!-- IF {PHP|cot_module_active('pfs')} -->
                            <!-- IF {COMMENTS_FORM_PFS} -->
                            {COMMENTS_FORM_PFS}
                            <!-- ENDIF -->
                            <!-- IF {COMMENTS_FORM_SFS} -->
                            <span class="mx-2">{PHP.cfg.separator}</span>
                            {COMMENTS_FORM_SFS}
                            <!-- ENDIF -->
                        <!-- ENDIF -->
                        <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
                            <!-- IF {COMMENTS_FORM_PFS} -->
                            {COMMENTS_FORM_PFS}
                            <!-- ENDIF -->
                            <!-- IF {COMMENTS_FORM_SFS} -->
                            <span class="mx-2">{PHP.cfg.separator}</span>
                            {COMMENTS_FORM_SFS}
                            <!-- ENDIF -->
                        <!-- ENDIF -->
                    </div>
                    <!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFY_IMG} -->
                    <div class="mb-3">
                        {COMMENTS_FORM_VERIFY_IMG}: {COMMENTS_FORM_VERIFY_INPUT}
                    </div>
                    <!-- ENDIF -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="alert alert-info">{COMMENTS_FORM_HINT}</div>
        <!-- END: COMMENTS_NEWCOMMENT -->

        <!-- BEGIN: COMMENTS_EMPTY -->
        <div class="alert alert-warning">{COMMENTS_EMPTYTEXT}</div>
        <!-- END: COMMENTS_EMPTY -->

        <!-- BEGIN: COMMENTS_CLOSED -->
        <div class="alert alert-danger">{COMMENTS_CLOSED}</div>
        <!-- END: COMMENTS_CLOSED -->
    </div>
<!-- IF !{COMMENTS_IS_AJAX} -->
</div>
<!-- ENDIF -->
<!-- END: COMMENTS -->